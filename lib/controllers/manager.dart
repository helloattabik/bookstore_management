import 'package:bookstore/models/buku.dart';
import 'package:bookstore/models/buku_fiksi.dart';
import 'package:bookstore/models/buku_nonfiksi.dart';
import 'dart:io';
import 'dart:convert';

import 'package:bookstore/utils/tools.dart';


class Manager {
  final List<Books> bookStorage = [];
  final File databaseFile = File('data/db_books.json');

  Future<void> addBook(Books book) async {
    bookStorage.add(book);
    await saveData();
    print('[INFO] Book added successfully!');
  }

  void displayBooks() {
    if (bookStorage.isEmpty) {
      print('[INFO] No books available.');
      return;
    }

    divider('top');
    print('│ ${'Type'.padRight(15)} │ ${'Title'.padRight(44)} │ ${'Price'.padRight(12)} │ ${'Genre/Topics'.padRight(36)} │');
    divider('middle');
    for (Books book in bookStorage) book.showInformation();
    divider('bottom');
  }

  void searchBook(String keyword) {
    final result = bookStorage.where((book) {
      return book.title.toLowerCase().contains(keyword.toLowerCase());
    }).toList();

    if (result.isEmpty){
      print('  Book "$keyword" not found.');
      return;
    }

    for (Books book in result) {
      book.showInformation();
    }
  }

  double calculateTotalAssets() {
  return bookStorage.fold(0,(total, book) => total + book.price);
  }

  Future<void> saveData() async {
    List<Map<String,dynamic>> data = [];
    for (Books book in bookStorage){
        data.add(book.toJson());
    }
    String jsonString =
        const JsonEncoder.withIndent("  ")
        .convert(data);
    await databaseFile.writeAsString(jsonString);

  }

  Future<void> loadData() async {

  if (!await databaseFile.exists()) return;

  String jsonString =
      await databaseFile.readAsString();

  if (jsonString.trim().isEmpty) return;

  List<dynamic> data = jsonDecode(jsonString);
  bookStorage.clear();

  for (var item in data) {
    if (item["type"] == "fiction") {
      bookStorage.add(FictionBook.fromJson(item));

    } else {
      bookStorage.add(NonFictionBook.fromJson(item));
    }
  }

}
}
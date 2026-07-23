import 'dart:io';
import 'package:bookstore/exceptions/except.dart';
import 'package:bookstore/utils/tools.dart';
import 'package:bookstore/controllers/manager.dart';
import 'package:bookstore/models/buku_fiksi.dart';
import 'package:bookstore/models/buku_nonfiksi.dart';

void main() async {  
  await manager.loadData();
  while (true) {
    title('bookstore management');
    leftText('');
    leftText('${'[1] Add Book'.padRight(30)}[4] Calc Assets');
    leftText('${'[2] Show Inventory'.padRight(30)}[5] Save');
    leftText('${'[3] Search Book'.padRight(30)}[0] Exit');
    leftText('');
    divider('bottom');
    String? select = stringInput('Select');
    
    try {
      if      (select == '1') await addBook();
      else if (select == '2') displayBooks();
      else if (select == '3') seacrhBook();
      else if (select == '4') calculateTotalAssets();
      else if (select == '5') await saveData();
      else if (select == '0') quitPage();
      else {
        print('[INFO] Pilihan menu tidak tersedia.');
      }
    } on DataException catch (e) {
      print('[GAGAL]: ${e.message}');
    } catch (e) {
      print('[TERJADI KESALAHAN]: $e');
    }
    
  } 
}

final manager = Manager();
Future<void> addBook() async {
  printHeading('add book');
  String category = stringInput('Category | [1] Fiksi [2] Non-Fiksi |');
  divider('noborder');
  if (category == '1' || category == '2') {
    String title = stringInput('Title');
    String writer = stringInput('Writer');
    String publisher = stringInput('Publisher');
    double? price = doubleInput('Price');
    if (category == '1') {
      String genre = stringInput('Genre');
      await manager.addBook(FictionBook(title, writer, publisher, price, genre));
    } else {
      String topic = stringInput('topic');
      await manager.addBook(NonFictionBook(title, writer, publisher, price, topic));
    }
  } 
  else throw DataException('[ERROR] Invalid selection');
}

void displayBooks(){
  printHeading('etalase toko buku');
  manager.displayBooks();
  pause(message: 'Press Enter to main menu...');
}

void seacrhBook(){
  printHeading('cari buku');
  String keyword = stringInput('Keyword');;
  print('');
  manager.searchBook(keyword);
}

void calculateTotalAssets(){
  printHeading('hitung total aset');
  print('  Total Aset Gudang: Rp. ${manager.calculateTotalAssets().toInt()}');    
}

Future<void> saveData() async {
  printHeading('simpan data');
  await manager.saveData();
}

void quitPage(){
  print('\n  Terima kasih telah menggunakan sistem ini. Sampai jumpa!');
  exit(0); 
}



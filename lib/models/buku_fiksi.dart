import 'package:bookstore/models/buku.dart';

class FictionBook extends Books {
  String genre;
  FictionBook(String title, String writer, String publisher, double price, this.genre) : super(title, writer, publisher, price);
  
  @override
  void showInformation() {
    print('  ${'[FIKSI]'.padRight(11)} | ${title.padRight(44)} | ${'Rp. ${price.toInt()}'.padRight(12)} | ${genre.padRight(20)} |');
  }
}
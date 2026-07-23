import 'package:bookstore/models/buku.dart';

class NonFictionBook extends Books {
  String bidangIlmu;

  NonFictionBook(String title, String writer, String publisher, double price, this.bidangIlmu) : super(title, writer, publisher, price);

  @override
  void showInformation() {
    print('  ${'[NON-FIKSI]'.padRight(11)} | ${title.padRight(44)} | ${'Rp. ${price.toInt()}'.padRight(12)} | ${bidangIlmu.padRight(20)} |');
  }
}
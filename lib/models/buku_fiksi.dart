import 'buku.dart';

class BukuFiksi extends Buku {
  String genre;

  BukuFiksi(String judul, double harga, this.genre) : super(judul, harga);

  @override
  void tampilkanInfo() {
    print('  ${'[FIKSI]'.padRight(11)} | ${judul.padRight(44)} | ${'Rp. ${harga.toInt()}'.padRight(12)} | ${genre.padRight(20)} |');
  }
}
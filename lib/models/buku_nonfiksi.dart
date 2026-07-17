import 'buku.dart';

class BukuNonFiksi extends Buku {
  String bidangIlmu;

  BukuNonFiksi(String judul, double harga, this.bidangIlmu) : super(judul, harga);

  @override
  void tampilkanInfo() {
    print('  ${'[NON-FIKSI]'.padRight(11)} | ${judul.padRight(44)} | ${'Rp. ${harga.toInt()}'.padRight(12)} | ${bidangIlmu.padRight(20)} |');
  }
}
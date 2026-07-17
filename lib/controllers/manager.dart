import '../models/buku.dart';

class Manager {
  final List<Buku> koleksiBuku = [];

  void tambah(Buku buku) {
    koleksiBuku.add(buku);
    print('\n  [INFO] Buku berhasil ditambahkan!');
  }

  void tampilkanSemua() {
    if (koleksiBuku.isEmpty) {
      print('  Kosong. Belum ada data buku.');
      return;
    }
    for (var buku in koleksiBuku) {
      buku.tampilkanInfo(); 
    }
  }

  void cari(String keyword) {
    var hasil = koleksiBuku.where((buku) => 
        buku.judul.toLowerCase().contains(keyword.toLowerCase())).toList();
    
    if (hasil.isEmpty) {
      print('  Buku dengan judul "$keyword" tidak ditemukan.');
    } else {
      for (var buku in hasil) {
        buku.tampilkanInfo();
      }
    }
  }

  double hitungTotalAset() {
    return koleksiBuku.fold(0, (total, buku) => total + buku.harga);
  }

  Future<void> simpanData() async {
    print('\n  Menyimpan data ke server...');
    await Future.delayed(Duration(seconds: 2));
    print('  [INFO] Data berhasil disimpan!');
  }
}
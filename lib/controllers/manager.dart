import 'package:main/models/buku.dart';

class Manager {
  final List<Books> BookStorage = [];

  void addBook(Books addBook) {
    BookStorage.add(addBook);
    print('\n  [INFO] Buku berhasil ditambahkan!');
  }

  void tampilkanSemua() {
    if (BookStorage.isEmpty) {
      print('  Kosong. Belum ada data buku.');
      return;
    }
    for (var buku in BookStorage) {
      buku.showInformation(); 
    }
  }

  void cari(String keyword) {
    var hasil = BookStorage.where((buku) => 
        buku.title.toLowerCase().contains(keyword.toLowerCase())).toList();
    
    if (hasil.isEmpty) {
      print('  Buku dengan judul "$keyword" tidak ditemukan.');
    } else {
      for (var buku in hasil) {
        buku.showInformation();
      }
    }
  }

  double hitungTotalAset() {
    return BookStorage.fold(0, (total, buku) => total + buku.price);
  }

  Future<void> simpanData() async {
    print('\n  Menyimpan data ke server...');
    await Future.delayed(Duration(seconds: 2));
    print('  [INFO] Data berhasil disimpan!');
  }
}




import 'dart:io';
import 'package:main/exceptions/except.dart';
import 'package:main/utils/tools.dart';
import 'package:main/controllers/manager.dart';
import 'package:main/models/buku_fiksi.dart';
import 'package:main/models/buku_nonfiksi.dart';

void main() async {
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
      if      (select == '1') addBook();
      else if (select == '2') showBooks();
      else if (select == '3') seacrhBook();
      else if (select == '4') calcAssets();
      else if (select == '5') await saveData();
      else if (select == '0') quitPage();
      else {
        print('\n  [INFO] Pilihan menu tidak tersedia.');
      }
    } on DataException catch (e) {
      print('\n  [GAGAL]: ${e.message}');
    } catch (e) {
      print('\n  [TERJADI KESALAHAN]: $e');
    }
    
  } 
}

final manager = Manager();
    void addBook() {
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
          manager.addBook(FictionBook(title, writer, publisher, price, genre));
        } else {
          String topic = stringInput('topic');
          manager.addBook(NonFictionBook(title, writer, publisher, price, topic));
        }
      } 
      else throw DataException('[ERROR] Invalid selection');
    }
 
    void showBooks(){
      printHeading('etalase toko buku');
      manager.tampilkanSemua();
    }
    
    void seacrhBook(){
      printHeading('cari buku');
      String keyword = stringInput('Keyword');;
      print('');
      manager.cari(keyword);
    }

    void calcAssets(){
      printHeading('hitung total aset');
      print('  Total Aset Gudang: Rp. ${manager.hitungTotalAset().toInt()}');    
    }

    Future<void> saveData() async {
      printHeading('simpan data');
      await manager.simpanData();
    }

    void quitPage(){
      print('\n  Terima kasih telah menggunakan sistem ini. Sampai jumpa!');
      exit(0); 
    }



import 'dart:io';
import '../lib/models/buku_fiksi.dart';
import '../lib/models/buku_nonfiksi.dart';
import '../lib/controllers/manager.dart';
import '../lib/exceptions/data_exception.dart';
import '../lib/utils/tools.dart';

void main() async {
  final manager = Manager();

  while (true) {
    print('');
    divider('top');
    centerText('GRAMEDIA BOOKSTORE');
    centerText('Sistem Manajemen Buku');
    divider('bottom');
    leftText('[1] Tambah Data Buku');
    leftText('[2] Lihat Semua Data');
    leftText('[3] Cari Data');
    leftText('[4] Hitung Total Aset');
    leftText('[5] Simpan Data');
    leftText('[6] Keluar');
    divider('bottom');
    textInput('pilih menu');
    String? pilihan = stdin.readLineSync();

    try {
      if (pilihan == '1') {
        printHeading('tambah buku');
        textInput('Kategori [1. Fiksi | 2. Non-Fiksi]');
        String? kategori = stdin.readLineSync();

        if (kategori != '1' && kategori != '2') throw DataException('Kategori tidak valid!');

        textInput('judul buku');
        String judul = stdin.readLineSync() ?? '';

        textInput('harga buku');
        double? harga = double.tryParse(stdin.readLineSync() ?? '');
        if (harga == null) throw DataException('Harga harus berupa angka!');

        if (kategori == '1') {
          textInput('genre');
          String genre = stdin.readLineSync() ?? '';
          manager.tambah(BukuFiksi(judul, harga, genre));
        } else {
          textInput('bidang ilmu');
          String bidang = stdin.readLineSync() ?? '';
          manager.tambah(BukuNonFiksi(judul, harga, bidang));
        }
      } 
      else if (pilihan == '2') {
        printHeading('etalase toko buku');
        manager.tampilkanSemua();
      } 
      else if (pilihan == '3') {
        printHeading('cari buku');
        textInput('masukkan keyword judul');
        String keyword = stdin.readLineSync() ?? '';
        print('');
        manager.cari(keyword);
      } 
      else if (pilihan == '4') {
        printHeading('hitung total aset');
        print('  Total Aset Gudang: Rp. ${manager.hitungTotalAset().toInt()}');      } 
      else if (pilihan == '5') {
        printHeading('simpan data');
        await manager.simpanData();
      } 
      else if (pilihan == '6') {
        print('\n  Terima kasih telah menggunakan sistem ini. Sampai jumpa!');
        exit(0);
      } 
      else {
        print('\n  [INFO] Pilihan menu tidak tersedia.');
      }
    } on DataException catch (e) {
      print('\n  [GAGAL]: ${e.pesan}');
    } catch (e) {
      print('\n  [TERJADI KESALAHAN]: $e');
    }
  }
}
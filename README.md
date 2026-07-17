# Gramedia Bookstore — Aplikasi CLI (Command Line Interface)
# UAS Pemrograman Berorientasi Objek (Dart)

## Nama dan NIM
- Nama : Tri Misbachul Attabik
- NIM  : 251240001637

## Tema Aplikasi
Sistem Manajemen Toko Buku — aplikasi CLI (Command Line Interface) untuk mengelola data inventaris buku yang dijual di Gramedia Bookstore. Sistem ini mencakup pengelolaan buku berdasarkan kategori, yaitu Buku Fiksi dan Buku Non-Fiksi, dengan penerapan konsep OOP (Pemrograman Berorientasi Objek) secara menyeluruh.

## Fitur Program
1. **Tambah Data Buku** — menambahkan produk buku baru (Fiksi atau Non-Fiksi) lengkap dengan validasi input (judul tidak boleh kosong, harga harus berupa angka dan tidak boleh negatif).
2. **Lihat Semua Data** — menampilkan etalase seluruh buku yang tersimpan dalam format tabel yang sejajar dan rapi.
3. **Cari Data** — mencari spesifik buku berdasarkan kata kunci judul.
4. **Hitung Total Aset** — mengkalkulasi dan menampilkan jumlah total nilai aset buku (akumulasi dari harga seluruh buku yang terdaftar).
5. **Simpan Data** — menyimulasikan proses penyimpanan data secara asynchronous ke server (menggunakan metode Future delay).
6. **Keluar** — mengakhiri jalannya program.

## Cara Menjalankan Program
1. Pastikan Dart SDK sudah terinstall di komputer.
    Cek pada terminal dengan perintah:
    dart --version

2. Clone atau download project ini, lalu masuk ke folder project:
    git clone https://github.com/helloattabik/project_gramedia
    cd project_gramedia

3. Jalankan program dengan perintah:
    dart run

4. Program akan menampilkan antarmuka menu di terminal. Pilih angka 1-6 sesuai fitur yan
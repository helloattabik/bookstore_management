<div align='center'>
<h1 align='center'> UAS Pemrograman Berorientasi Objek </h1>
<p>Program ini dikerjakan untuk memenuhi UAS Semester 2 Mata Kuliah Pemrograman Beroientasi Objek </p>
<p>Dosen Pengampu Harminto Mulyo, S.Kom., M.Kom. </p>
</div>

<hr style="border:3px solid black;">

## Biodata
- `Nama           ` : Tri Misbachul Attabik
- `NIM            ` : 251240001637
- `Program Studi  ` : Teknik Informatika
  
## Tema Aplikasi
Bookstore - Aplikasi CLI untuk mengelola data invetoris buku.

## Fitur Program
1. **Tambah Data Buku** — menambahkan produk buku baru (Fiksi atau Non-Fiksi) lengkap dengan validasi input (judul tidak boleh kosong, harga harus berupa angka dan tidak boleh negatif).
2. **Lihat Semua Data** — menampilkan etalase seluruh buku yang tersimpan dalam format tabel yang sejajar dan rapi.
3. **Cari Data** — mencari spesifik buku berdasarkan kata kunci judul.
4. **Hitung Total Aset** — mengkalkulasi dan menampilkan jumlah total nilai aset buku (akumulasi dari harga seluruh buku yang terdaftar).
5. **Simpan Data** — menyimulasikan proses penyimpanan data secara asynchronous ke server (menggunakan metode Future delay).
6. **Keluar** — mengakhiri jalannya program.

## 📂 Struktur Folder

```text
project_gramedia/
├── bin/
│   └── bookstore.dart            # this main
├── lib/
│   ├── controllers/
│   │   └── manager.dart          # for controll action
│   ├── exceptions/
│   │   └── except.dart           # Custom exception
│   ├── models/
│   │   ├── buku.dart             # Abstract Class Buku
│   │   ├── buku_fiksi.dart       # Class : Fiction Book
│   │   └── buku_nonfiksi.dart    # Class : NonFiction Book
│   └── utils/
│       └── tools.dart            # this code for set layout
├── test/
│   └── project_gramedia_test.dart
├── .gitignore
├── analysis_options.yaml
├── CHANGELOG.md
├── pubspec.yaml
├── pubspec.lock
└── README.md
```

## Cara Menjalankan Program
1. Pastikan Dart SDK sudah terinstal di komputer.

   Cek versi Dart:

   ```bash
   dart --version
   ```

2. Clone repository, lalu masuk ke folder project.

   ```bash
   git clone https://github.com/helloattabik/project_gramedia.git
   cd project_gramedia
   ```

3. Jalankan program.

   ```bash
   dart run
   ```

4. Program ini akan menampilkan pilihan menu sesuai dengan fitur yang tersedia

## To-Do Feature
1. Update Book                [On Progress]
2. Delete Book                [On Progress]

**Tags:**  
`#UNISNUJEPARA` `#TEKNIKINFORMATIKA` `#PEMROGRAMANBERBASISOBJEK` `#DART` `#OOP`

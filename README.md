<div align='center'>
<h1 align='center'> UAS Pemrograman Berorientasi Objek </h1>
<p>Program ini dikerjakan untuk memenuhi UAS Semester 2 Mata Kuliah Pemrograman Beroientasi Objek </p>
<p>Dosen Pengampu Harminto Mulyo, S.Kom., M.Kom. </p>
</div>

<hr style="border:3px solid black;">

<h3>Biodata</h3>
<table>
<tr>
<td><b>Nama</b></td>
<td>Tri Misbachul Attabik</td>
</tr>

<tr>
<td><b>NIM</b></td>
<td>251240001637</td>
</tr>

<tr>
<td><b>Program Studi</b></td>
<td>Teknik Informatika</td>
</tr>

</table>

<h3>Tema Aplikasi</h3>
Bookstore - Aplikasi CLI untuk mengelola data inventaris buku.

<hr>
<h3>Fitur</h3>
<table>
  <thead>
    <tr>
      <th>No</th>
      <th>Fitur</th>
      <th>Deskripsi</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>Add Book</td>
      <td>Menambahkan data buku baru ke dalam file <code>db_books.json</code></td>
    </tr>
    <tr>
      <td>2</td>
      <td>Show Inventory</td>
      <td>Menampilkan daftar seluruh buku yang tersimpan pada <code>db_books.json</code></td>
    </tr>
    <tr>
      <td>3</td>
      <td>Search Book</td>
      <td>Mencari data buku berdasarkan nama buku dari <code>db_books.json</code></td>
    </tr>
    <tr>
      <td>4</td>
      <td>Calc Assets</td>
      <td>Menghitung total aset buku dalam satuan Rupiah</td>
    </tr>
    <tr>
      <td>5</td>
      <td>Save</td>
      <td>Menyimpan data buku (hard code) ke dalam <code>db_books.json</code></td>
    </tr>
    <tr>
      <td>0</td>
      <td>Exit</td>
      <td>Keluar dari program dengan menjalankan fungsi <code>exit(0)</code></td>
    </tr>
  </tbody>
</table>

1. **Tambah Data Buku** — menambahkan produk buku baru (Fiksi atau Non-Fiksi) lengkap dengan validasi input (judul tidak boleh kosong, harga harus berupa angka dan tidak boleh negatif).
2. **Lihat Semua Data** — menampilkan etalase seluruh buku yang tersimpan dalam format tabel yang sejajar dan rapi.
3. **Cari Data** — mencari spesifik buku berdasarkan kata kunci judul.
4. **Hitung Total Aset** — mengkalkulasi dan menampilkan jumlah total nilai aset buku (akumulasi dari harga seluruh buku yang terdaftar).
5. **Simpan Data** — menyimulasikan proses penyimpanan data secara asynchronous ke server (menggunakan metode Future delay).
6. **Keluar** — mengakhiri jalannya program.

<h3>Struktur Folder</h3>

```text
BOOKSTORE_MANAGEMENT/
├── .dart_tool/
│   ├── pub/
│   └── package_config.json
│
├── bin/
│   └── bookstore.dart
│
├── data/
│   └── db_books.json
│
├── lib/
│   ├── controllers/
│   │   └── manager.dart
│   │
│   ├── exceptions/
│   │   └── except.dart
│   │
│   ├── models/
│   │   ├── buku.dart
│   │   ├── buku_fiksi.dart
│   │   └── buku_nonfiksi.dart
│   │
│   └── utils/
│       └── tools.dart
│
├── test/
│   └── bookstore_management_test.dart
│
├── .gitignore
├── analysis_options.yaml
├── CHANGELOG.md
├── pubspec.lock
├── pubspec.yaml
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
   git clone https://github.com/helloattabik/bookstore_management.git
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

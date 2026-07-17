import '../exceptions/data_exception.dart';

abstract class Buku {
  String _judul;
  double _harga;

  Buku(this._judul, this._harga) {
    if (_harga < 0) throw DataException('Harga tidak boleh negatif!');
    if (_judul.trim().isEmpty) throw DataException('Judul tidak boleh kosong!');
  }

  String get judul => _judul;
  double get harga => _harga;

  set judul(String value) {
    if (value.trim().isEmpty) throw DataException('Judul tidak boleh kosong!');
    _judul = value;
  }

  set harga(double value) {
    if (value < 0) throw DataException('Harga tidak boleh negatif!');
    _harga = value;
  }

  void tampilkanInfo();
}
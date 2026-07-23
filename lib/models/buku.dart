import 'package:main/exceptions/except.dart';

abstract class Books{
  String _title;
  String _writer;
  String _publisher;
  double _price;

  Books(this._title, this._writer, this._publisher, this._price){
    if (_price <= 0) throw DataException('[ERROR] Price must be more than Rp. 0');
    if (_title.trim().isEmpty) throw DataException('[ERROR] Title cannot be empty');
  }

  String get title => _title;
  String get writer => _writer;
  String get publisher => _publisher;
  double get price => _price;

  // Set Title
  set title(String newTitle) {
    if (newTitle.trim().isNotEmpty) _title = newTitle;
    else throw DataException('[ERROR] Title cannot be empty');
  }

  // Set Price
  set price(double newPrice) {
    if (newPrice >= 0) _price = newPrice;
    else throw DataException('[ERROR] Price must be more than Rp. 0');
  }

  void showInformation();
}
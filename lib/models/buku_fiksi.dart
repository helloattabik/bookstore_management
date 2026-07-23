import 'package:bookstore/models/buku.dart';

class FictionBook extends Books {
  String genre;
  String type = 'Fiction';
  FictionBook(super.title, super.writer, super.publisher, super.price, this.genre);  
  
  // OVERRIDE
  void showInformation() {
    print('│ ${'[$type]'.padRight(15)} │ ${title.padRight(44)} │ ${'Rp. ${price.toInt()}'.padRight(12)} │ ${genre.padRight(36)} │');
  }

  Map<String, dynamic> toJson(){
    final data = super.toJson();
    data["type"] = "fiction";
    data["genre"] = genre;
    return data;
    }

  factory FictionBook.fromJson(Map<String, dynamic> json) {
    return FictionBook(
      json["title"],
      json["writer"],
      json["publisher"],
      (json["price"] as num).toDouble(),
      json["genre"],
    );
  }
}

import 'package:bookstore/models/buku.dart';

class NonFictionBook extends Books {
  String topic;
  String type = 'Non-Fiction';
  NonFictionBook(super.title, super.writer, super.publisher, super.price, this.topic);
  
  // OVERRIDE
  void showInformation() {
    print('│ ${'[$type]'.padRight(15)} │ ${title.padRight(44)} │ ${'Rp. ${price.toInt()}'.padRight(12)} │ ${topic.padRight(36)} │');
  }

  Map<String, dynamic> toJson(){
    final data = super.toJson();
    data["type"] = "Non-Fiction";
    data["topic"] = topic;
    return data;
  }

  factory NonFictionBook.fromJson(Map<String, dynamic> json) {
    return NonFictionBook(
      json["title"],
      json["writer"],
      json["publisher"],
      (json["price"] as num).toDouble(),
      json["topic"],
    );
  }
}
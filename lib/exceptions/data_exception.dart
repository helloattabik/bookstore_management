class DataException implements Exception {
  final String pesan;
  
  DataException(this.pesan);
  
  @override
  String toString() => 'Error: $pesan';
}
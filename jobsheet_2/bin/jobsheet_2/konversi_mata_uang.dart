

import 'dart:io';

void main() {
  print("=== Program Konversi Mata Uang dari IDR ===");

 // data terbaru
  Map<String, double> kurs = {
    "USD": 15500, // 1 USD = 15500 IDR
    "EUR": 16500, // 1 EUR = 16500 IDR
    "JPY": 110    // 1 JPY = 110 IDR
  };

  stdout.write("Masukkan jumlah dalam IDR: ");
  double jumlah = double.parse(stdin.readLineSync()!);

  kurs.forEach((mataUang, nilai) {
    double hasil = jumlah / nilai;
    print("IDR $jumlah = ${hasil.toStringAsFixed(2)} $mataUang");
  });
}

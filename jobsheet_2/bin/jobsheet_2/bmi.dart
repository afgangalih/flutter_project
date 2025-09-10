

import 'dart:io';

void main() {
  print("=== Program Hitung BMI (Body Mass Index) ===");

  stdout.write("Masukkan berat badan (kg): ");
  double berat = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan tinggi badan (m): ");
  double tinggi = double.parse(stdin.readLineSync()!);

  double bmi = berat / (tinggi * tinggi);

  print("\nBMI kamu adalah: ${bmi.toStringAsFixed(2)}");

  if (bmi < 18.5) {
    print("Kategori: Kurus");
  } else if (bmi >= 18.5 && bmi < 24.9) {
    print("Kategori: Normal");
  } else if (bmi >= 25 && bmi < 29.9) {
    print("Kategori: Overweight");
  } else {
    print("Kategori: Obesitas");
  }
}

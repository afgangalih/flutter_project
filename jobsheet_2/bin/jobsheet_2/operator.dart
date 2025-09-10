import 'dart:io';

void main() {
  print("=== Program Latihan Operator di Dart ===");

  // Input angka
  print("Masukkan angka pertama: ");
  int a = int.parse(stdin.readLineSync()!);

  print("Masukkan angka kedua: ");
  int b = int.parse(stdin.readLineSync()!);

  print("\n--- Operator Aritmatika ---");
  print("$a + $b = ${a + b}");
  print("$a - $b = ${a - b}");
  print("$a * $b = ${a * b}");
  print("$a / $b = ${a / b}");
  print("$a % $b = ${a % b}");

  print("\n--- Operator Perbandingan ---");
  print("$a == $b : ${a == b}");
  print("$a != $b : ${a != b}");
  print("$a > $b : ${a > b}");
  print("$a < $b : ${a < b}");
  print("$a >= $b : ${a >= b}");
  print("$a <= $b : ${a <= b}");

  print("\n--- Operator Logika ---");
  bool kondisi1 = a > 0;
  bool kondisi2 = b > 0;
  print("a > 0 && b > 0 : ${kondisi1 && kondisi2}");
  print("a > 0 || b > 0 : ${kondisi1 || kondisi2}");
  print("!(a > 0) : ${!kondisi1}");

  print("\n--- Operator Penugasan ---");
  int c = a;
  print("c = $c");
  c += b;
  print("c += b -> $c");
  c -= b;
  print("c -= b -> $c");
  c *= b;
  print("c *= b -> $c");
  c ~/= b; // bagi bulat
  print("c ~/= b -> $c");

  print("\n--- Operator Bitwise ---");
  print("$a & $b = ${a & b} (AND)");
  print("$a | $b = ${a | b} (OR)");
  print("$a ^ $b = ${a ^ b} (XOR)");
  print("~$a = ${~a} (NOT)");
  print("$a << 1 = ${a << 1} (geser kiri)");
  print("$a >> 1 = ${a >> 1} (geser kanan)");

  print("\n--- Operator Ternary ---");
  String hasil = (a > b) ? "a lebih besar dari b" : "a tidak lebih besar dari b";
  print("Hasil ternary: $hasil");
}

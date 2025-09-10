import 'dart:io';

void main() {
  print("=== Aplikasi Konversi Unit ===");
  print("Pilih kategori konversi:");
  print("1. Panjang");
  print("2. Massa");
  print("3. Volume");
  print("4. Suhu");

  stdout.write("Masukkan pilihan (1-4): ");
  int pilihan = int.parse(stdin.readLineSync()!);

  switch (pilihan) {
    case 1:
      konversiPanjang();
      break;
    case 2:
      konversiMassa();
      break;
    case 3:
      konversiVolume();
      break;
    case 4:
      konversiSuhu();
      break;
    default:
      print("Pilihan tidak valid.");
  }
}

// ==================== PANJANG ====================
void konversiPanjang() {
  Map<String, double> faktor = {
    "meter": 1,
    "kilometer": 1000,
    "sentimeter": 0.01,
    "milimeter": 0.001,
    "mil": 1609.34,
  };

  print("\n--- Konversi Panjang ---");
  stdout.write("Masukkan nilai dalam meter: ");
  double meter = double.parse(stdin.readLineSync()!);

  if (meter < 0) {
    print("Nilai tidak boleh negatif!");
    return;
  }

  faktor.forEach((unit, nilai) {
    double hasil = meter / nilai;
    print("= $hasil $unit");
  });
}

// ==================== MASSA ====================
void konversiMassa() {
  Map<String, double> faktor = {
    "kilogram": 1,
    "gram": 0.001,
    "ton": 1000,
    "pon": 0.453592,
    "ons": 0.1,
  };

  print("\n--- Konversi Massa ---");
  stdout.write("Masukkan nilai dalam kilogram: ");
  double kg = double.parse(stdin.readLineSync()!);

  if (kg < 0) {
    print("Nilai tidak boleh negatif!");
    return;
  }

  faktor.forEach((unit, nilai) {
    double hasil = kg / nilai;
    print("= $hasil $unit");
  });
}

// ==================== VOLUME ====================
void konversiVolume() {
  Map<String, double> faktor = {
    "liter": 1,
    "mililiter": 0.001,
    "meter kubik": 1000,
    "gallon": 3.785,
    "cc": 0.001,
  };

  print("\n--- Konversi Volume ---");
  stdout.write("Masukkan nilai dalam liter: ");
  double liter = double.parse(stdin.readLineSync()!);

  if (liter < 0) {
    print("Nilai tidak boleh negatif!");
    return;
  }

  faktor.forEach((unit, nilai) {
    double hasil = liter / nilai;
    print("= $hasil $unit");
  });
}

// ==================== SUHU ====================
void konversiSuhu() {
  print("\n--- Konversi Suhu ---");
  stdout.write("Masukkan nilai dalam Celcius: ");
  double c = double.parse(stdin.readLineSync()!);

  double reamur = c * 4 / 5;
  double fahrenheit = (c * 9 / 5) + 32;
  double kelvin = c + 273.15;

  print("= $c Celcius");
  print("= $reamur Reamur");
  print("= $fahrenheit Fahrenheit");
  print("= $kelvin Kelvin");
}

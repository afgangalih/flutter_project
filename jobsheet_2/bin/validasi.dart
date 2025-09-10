void main() {
  String username = 'budi1234';
  String password = 'pass1234';
  int umur = 17;

  // Validasi
  bool isUsernameValid = username.length >= 6;
  bool isPasswordValid = password.length >= 6;
  bool isAdult = umur >= 18;

  // Logika pendaftaran dan akses
  bool canRegister = isUsernameValid && isPasswordValid;
  bool canAccessAdultContent = canRegister && isAdult;

  // Output
  print('Dapat mendaftar: $canRegister');
  print('Dapat mengakses konten dewasa: $canAccessAdultContent');
}

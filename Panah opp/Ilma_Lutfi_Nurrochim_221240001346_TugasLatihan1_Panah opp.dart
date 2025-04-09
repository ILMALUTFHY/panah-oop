
// 🌟 EXPLORER 2025: Dunia OOP Dart Dimulai! 🌟
// ==========================================
// Tugas Latihan 1 - Versi Interaktif & Super Visual by Ilma Lutfi
// Ditambahkan menu pilihan interaktif & narasi panjang untuk showcase presentasi

import 'dart:io';

void main() {
  print("🧠 SELAMAT DATANG DI PROGRAM TUGAS LATIHAN 1 - DART EXPLORER 2025");
  print("------------------------------------------------------------");
  print("Silakan pilih salah satu soal untuk dijalankan:");
  print("1. 🚗 Soal Mobil");
  print("2. 🎓 Soal Mahasiswa");
  print("3. 📚 Soal Buku");
  print("4. 📐 Soal Segitiga");
  print("5. 🎨 Soal Warna");
  print("6. 🚀 Jalankan Semua");
  stdout.write("Masukkan pilihan (1-6): ");
  String? pilihan = stdin.readLineSync();

  switch (pilihan) {
    case '1':
      jalankanMobil();
      break;
    case '2':
      jalankanMahasiswa();
      break;
    case '3':
      jalankanBuku();
      break;
    case '4':
      jalankanSegitiga();
      break;
    case '5':
      jalankanWarna();
      break;
    case '6':
      jalankanMobil();
      jalankanMahasiswa();
      jalankanBuku();
      jalankanSegitiga();
      jalankanWarna();
      break;
    default:
      print("⚠️ Pilihan tidak valid. Silakan coba lagi.");
  }
}

// === FUNGSI MASING-MASING SOAL ===

void jalankanMobil() {
  print("\n🚗 MENJELAJAHI DUNIA MOBIL DIGITAL");
  var mobil1 = Mobil(merk: "Tesla", model: "Model S", tahun: 2025);
  var mobil2 = Mobil(merk: "Toyota", model: "Supra MK5", tahun: 2023);
  mobil1.tampilkanInfo();
  mobil2.tampilkanInfo();
}

// Soal 1: Kelas Mobil
class Mobil {
  String merk;
  String model;
  int tahun;

  Mobil({required this.merk, required this.model, required this.tahun});

  void tampilkanInfo() {
    print("🚘 Mobil ${this.model} keluaran ${this.tahun} dari merk ${this.merk}");
  }
}

void jalankanMahasiswa() {
  print("\n🎓 MAHASISWA GENERASI EMAS DIGITAL");
  var mhs = Mahasiswa();
  mhs.tampilkanInfo();
}

// Soal 2: Kelas Mahasiswa
class Mahasiswa {
  String nama = "Ilma Lutfi";
  String nim = "221240001346";

  void tampilkanInfo() {
    print("👩‍🎓 Nama Mahasiswa: $nama");
    print("🆔 NIM: $nim");
  }
}

void jalankanBuku() {
  print("\n📚 BUKU DIGITAL UNTUK PEMBELAJAR CERDAS");
  var buku1 = Buku("Belajar Dart Sampai Mahir", "Ilma Lutfi");
  var buku2 = Buku("Flutter & IoT Masa Kini", "Rochim Mastercode");
  buku1.tampilkanInfo();
  buku2.tampilkanInfo();
}

// Soal 3: Kelas Buku
class Buku {
  String judul;
  String pengarang;

  Buku(this.judul, this.pengarang);

  void tampilkanInfo() {
    print("📖 Judul Buku: $judul");
    print("✍️ Pengarang: $pengarang");
  }
}

void jalankanSegitiga() {
  print("\n📐 MENJELAJAHI GEOMETRI SEGITIGA");
  var s1 = Segitiga.samaSisi(10, 10);
  var s2 = Segitiga.sikuSiku(6, 8);
  s1.tampilkanInfo();
  s2.tampilkanInfo();
}

// Soal 4: Kelas Segitiga
class Segitiga {
  double alas;
  double tinggi;
  String jenis;

  Segitiga._(this.alas, this.tinggi, this.jenis);

  factory Segitiga.samaSisi(double alas, double tinggi) {
    return Segitiga._(alas, tinggi, "Sama Sisi");
  }

  factory Segitiga.sikuSiku(double alas, double tinggi) {
    return Segitiga._(alas, tinggi, "Siku-Siku");
  }

  void tampilkanInfo() {
    print("🔺 Jenis Segitiga: $jenis");
    print("📏 Alas: $alas cm, Tinggi: $tinggi cm");
  }
}

void jalankanWarna() {
  print("\n🎨 RGB COLOR MIX LAB - KONSTAN WARNA");
  const merahTerang = Warna(255, 0, 0);
  const hijauDaun = Warna(34, 139, 34);
  const biruLangit = Warna(135, 206, 250);
  merahTerang.tampilkanInfo();
  hijauDaun.tampilkanInfo();
  biruLangit.tampilkanInfo();
}

// Soal 5: Kelas Warna
class Warna {
  final int merah;
  final int hijau;
  final int biru;

  const Warna(this.merah, this.hijau, this.biru);

  void tampilkanInfo() {
    print("🌈 Warna RGB($merah, $hijau, $biru)");
  }
}

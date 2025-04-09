import 'dart:io';

// Soal 1: Pewarisan (Inheritance)
class Hewan {
  String nama;

  Hewan(this.nama);

  void suara() {
    print('$nama: Suara hewan...');
  }
}

class Kucing extends Hewan {
  String jenisBulu;

  Kucing(String nama, this.jenisBulu) : super(nama);

  @override
  void suara() {
    print('$nama: Meong~ Meong~');
  }

  void detail() {
    print('Nama: $nama');
    print('Jenis Bulu: $jenisBulu');
  }
}

// Soal 2: Enkapsulasi
class RekeningBank {
  double _saldo = 0.0;

  void setor(double jumlah) {
    _saldo += jumlah;
    print('Setor: Rp$jumlah');
  }

  void tarik(double jumlah) {
    if (jumlah <= _saldo) {
      _saldo -= jumlah;
      print('Tarik: Rp$jumlah');
    } else {
      print('Saldo tidak cukup!');
    }
  }

  void cekSaldo() {
    print('Saldo saat ini: Rp$_saldo');
  }
}

// Soal 3: Polimorfisme
class BangunDatar {
  double hitungLuas() => 0.0;
}

class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  double hitungLuas() => sisi * sisi;
}

class Segitiga extends BangunDatar {
  double alas, tinggi;

  Segitiga(this.alas, this.tinggi);

  @override
  double hitungLuas() => 0.5 * alas * tinggi;
}

// Soal 4: Abstraksi
abstract class Bentuk {
  double hitungLuas();
}

class Lingkaran extends Bentuk {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double hitungLuas() => 3.14 * jariJari * jariJari;
}

void main() {
  while (true) {
    print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    print('🚀 Tugas Latihan 2 - Explorer 2025 Edition');
    print('Pilih soal yang ingin dijalankan:');
    print('  1. Soal 1 - Pewarisan Kelas Hewan');
    print('  2. Soal 2 - Enkapsulasi Rekening Bank');
    print('  3. Soal 3 - Polimorfisme Bangun Datar');
    print('  4. Soal 4 - Abstraksi Bentuk & Lingkaran');
    print('  0. Keluar');
    print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
    stdout.write('Pilihanmu: ');
    String? pilihan = stdin.readLineSync();
    print('\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');

    switch (pilihan) {
      case '1':
        print('[Soal 1] Pewarisan Kelas Hewan:');
        var kucing = Kucing('Mimi', 'Pendek Halus');
        kucing.detail();
        kucing.suara();
        break;

      case '2':
        print('[Soal 2] Enkapsulasi Rekening Bank:');
        var rekening = RekeningBank();
        rekening.setor(100000);
        rekening.tarik(25000);
        rekening.cekSaldo();
        break;

      case '3':
        print('[Soal 3] Polimorfisme Bangun Datar:');
        var persegi = Persegi(4);
        var segitiga = Segitiga(6, 3);
        print('Luas Persegi: ${persegi.hitungLuas()}');
        print('Luas Segitiga: ${segitiga.hitungLuas()}');
        break;

      case '4':
        print('[Soal 4] Abstraksi Bentuk & Lingkaran:');
        var lingkaran = Lingkaran(7);
        print('Luas Lingkaran: ${lingkaran.hitungLuas()}');
        break;

      case '0':
        print('Terima kasih sudah menjelajah OOP Explorer 2025! 🚀');
        return;

      default:
        print('Pilihan tidak valid!');
    }

    print('\nTekan Enter untuk kembali ke menu...');
    stdin.readLineSync();
  }
}

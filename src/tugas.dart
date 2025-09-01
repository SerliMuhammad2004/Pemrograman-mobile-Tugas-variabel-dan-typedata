import 'dart:io';

void main(){
stdout.write("Masukkan nama karyawan: ");
String? nama = stdin.readLineSync();
stdout.write("Masukkan  ID karyawan: ");
int id_k = int.parse(stdin.readLineSync()!);

stdout.write("Masukkan jumlah jam kerja per minggu: ");
int jamKerja = int.parse(stdin.readLineSync()!);

stdout.write("Masukkan upah per jam: ");
double upahPJ = double.parse(stdin.readLineSync()!);

stdout.write("Apakah karyawan tetap? (ya/tidak): ");
bool status = stdin.readLineSync()!.toLowerCase() == "ya";

double gajiKotor = jamKerja * upahPJ;
double pajak = status? 0.10 * gajiKotor : 0.05 * gajiKotor;
double gajiBersih = gajiKotor - pajak;

print("\n===== Informasi Gaji Karyawan ===== ");
print("Nama Karyawan  : $nama");
print("ID Karyawan    : $id_k");
print("Gaji kotor     : Rp.${(gajiKotor.toStringAsFixed(2))}");
print("Pajak          : Rp.${(pajak.toStringAsFixed(2))}");
print("Gaji Bersih    : Rp.${(gajiBersih.toStringAsFixed(2))}");

}
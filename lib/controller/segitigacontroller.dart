import 'package:get/get.dart';

class SegitigaController extends GetxController {
  RxBool isHitungLuas = true.obs;
  int alas = 0;
  int tinggi = 0;

  final hasil = "".obs;

  void hitungluas() {
    num hitung = 0.5* alas * tinggi ;
    hasil.value = "Hasil perhitungan dari $alas x $tinggi= $hitung";
    isHitungLuas.value = true;
  }

  void hitungKeliling() {
    int hitung1 = 3 * alas ;
    hasil.value = "Hasil perhitungan dari 3 x $alas= $hitung1";
    isHitungLuas.value = false;
  }
}
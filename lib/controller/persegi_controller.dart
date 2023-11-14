import 'package:get/get.dart';

class PersegiController extends GetxController {
  RxBool isHitungLuas = true.obs;
  int sisi = 0;
  final hasilluas = "".obs;
  final hasilkel= "".obs;

  void hitungluas() {
    int hitung = sisi * sisi;
    hasilluas.value = "Hasil perhitungan dari $sisi x $sisi= $hitung";
    isHitungLuas.value = true;
  }

  void hitunglKeliling() {
    int hitung = sisi + sisi + sisi + sisi;
    hasilkel.value = "Hasil perhitungan dari $sisi + $sisi + $sisi + $sisi= $hitung";
    isHitungLuas.value = false;
  }
}
import 'package:get/get.dart';

class PersegipanjangController extends GetxController {
  RxBool isHitungLuas = true.obs;
  int p = 0;
  int l = 0;
  final hasil = "".obs;

  void hitungpanjang() {
    int hitung = p * l ;
    hasil.value = "Hasil perhitungan dari $p x $l= $hitung";
    isHitungLuas.value = true;
  }

  void hitunglebar() {
    int hitung = p + p + l + l ;
    hasil.value = "Hasil perhitungan dari $p + $p + $l + $l = $hitung";
    isHitungLuas.value = false;
  }
}
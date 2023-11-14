import 'package:get/get.dart';

class JajargenjangController extends GetxController{

  RxBool isHitungLuas = true.obs;


  int A = 0;

  int T = 0;

  int sisimiring = 0;

  final hasil = "".obs;

  void hitungLuas() {
    int hitung =  A * T ;
    hasil.value = "Hasil perhitungan dari  $A * $T = $hitung";
    isHitungLuas.value = true;
  }
  void hitungKelilingPersegi() {
    int hitung = 2 * sisimiring + A;
    hasil.value = "Hasil perhitungan dari 2 x $sisimiring + $A = $hitung";
    isHitungLuas.value = false;
  }
}
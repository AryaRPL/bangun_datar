import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});
  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Persegi",
          ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/Persegi.PNG",
            height: 120,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi"),
          ),
          Text("bangun datar dua dimensi yang terbentuk dari empat rusuk yang sama panjang dan keempat sudut itu adalah sudut siku-siku. Sifat bangun datar persegi adalah: Semua sisinya memiliki ukuran panjang yang sama dan juga sisinya berhadapan sejajar. Semua sudutnya adalah sudut siku-siku atau 90°."),
          Padding(
              padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            onChanged: (value){
              _persegiController.sisi=int.parse(value);
            },
              decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Sisi",
              hintText: "Masukan Sisi",
              hintStyle: TextStyle(color: Colors.grey.shade400),
              contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(10))))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: (Colors.greenAccent)
                  ),
                  onPressed: () {
                _persegiController.hitungluas();
              },
                  child: Text("Hitung Luas"),),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: (Colors.yellowAccent)
              ),
              onPressed: () {
            _persegiController.hitunglKeliling();
          },
              child: Text("Hitung Keliling")),
              ],
    ),
    Obx(() => Text(
    _persegiController.hasilluas.value,
    style: TextStyle(
    color: _persegiController.isHitungLuas.value
    ? Colors.redAccent
        : Colors.greenAccent,
    ),
    ),
    ),
      ],
      ),
    );
  }
}

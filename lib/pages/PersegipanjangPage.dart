import 'package:bangun_datar_app/controller/persegipanjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PersegipanjangPage extends StatelessWidget {
  PersegipanjangPage({super.key});
  final PersegipanjangController _persegipanjangController = Get.put(PersegipanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Persegi Panjang"
        ),
      ),
      body: Column(
        children: [
        Image.asset(
        "assets/persegipanjang.PNG",
        height: 120,
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Text("Persegi"),
      ),
          Text("data"),
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
    onChanged: (value){
    _persegipanjangController.p=int.parse(value);
    },
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            labelText: "Panjang",
            hintText: "Masukan Panjang",
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
                onChanged: (value){
                  _persegipanjangController.l=int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "lebar",
                    hintText: "Masukan lebar",
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
              _persegipanjangController.hitungpanjang();
            },
            child: Text("Hitung Luas"),),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: (Colors.yellowAccent)
              ),
              onPressed: () {
                _persegipanjangController.hitunglebar();
              },
              child: Text("Hitung Keliling")),
        ],
      ),
          Obx(() => Text(
            _persegipanjangController.hasil.value,
            style: TextStyle(
              color: _persegipanjangController.isHitungLuas.value
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

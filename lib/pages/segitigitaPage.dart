import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/segitigacontroller.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});
  final SegitigaController _segitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Segitiga"
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
                  _segitigaController.alas=int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Alas",
                    hintText: "Masukan Alas",
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
                  _segitigaController.tinggi=int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "tinggi",
                    hintText: "Masukan tinggi",
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
                  _segitigaController.hitungluas();
                },
                child: Text("Hitung Luas"),),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: (Colors.yellowAccent)
                  ),
                  onPressed: () {
                    _segitigaController.hitungKeliling();
                  },
                  child: Text("Hitung Keliling")),
            ],
          ),
          Obx(() => Text(
            _segitigaController.hasil.value,
            style: TextStyle(
              color: _segitigaController.isHitungLuas.value
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
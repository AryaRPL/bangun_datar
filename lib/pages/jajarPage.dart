import 'package:bangun_datar_app/controller/jajargenjang_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class jajargenjangPage extends StatelessWidget {
  jajargenjangPage({super.key});

  final JajargenjangController _jajargenjangController = Get.put(JajargenjangController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Jajargenjang Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/jajar.PNG",
              height: 150
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Jajargenjang"),
          ),
          Text("satu bangun segi empat yang menarik untuk kita bahas bersama ialah jajar genjang. Bangun datar ini merupakan bagun datar persegi empat yang dibentuk oleh empat sisi, dimana kedua sisi yang saling berhadapan memiliki letak yang sejajar dan panjangnya sama"),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              onChanged: (value){
                _jajargenjangController.A=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Alas ",
                  hintText: "Masukkan Alas",
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
                      borderRadius: BorderRadius.all(Radius.circular(10)))),),

          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              onChanged: (value){
                _jajargenjangController.T=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Tinggi ",
                  hintText: "Masukkan Tinggi",
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
                      borderRadius: BorderRadius.all(Radius.circular(10)))),),

          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              onChanged: (value){
                _jajargenjangController.sisimiring=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "sisimiring ",
                  hintText: "Masukkan Sisi",
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
                      borderRadius: BorderRadius.all(Radius.circular(10)))),),

          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: () {
                  _jajargenjangController.hitungLuas();
                },
                child: Text("Hitung luas"),
              ),
              SizedBox(width: 16.0), // Add some spacing between buttons
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyanAccent,
                ),
                onPressed: () {
                  _jajargenjangController.hitungKelilingPersegi();
                },
                child: Text("Hitung keliling"),
              ),
            ],
          ),
          Obx(
                () => Text(
              _jajargenjangController.hasil.value,
              style: TextStyle(
                color: _jajargenjangController.isHitungLuas.value
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
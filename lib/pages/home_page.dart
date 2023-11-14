import 'package:bangun_datar_app/pages/PersegiPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: [
          InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>PersegiPage()));
          },
          child: CostumMenu(imageAssets: "assets/persegi.PNG",title: "Persegi")),
          InkWell(
          onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>PersegiPage()));
          },
          child: CostumMenu(imageAssets: "assets/persegipanjang.PNG",title: "Persegi Panjang")),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>PersegiPage()));
              },
              child: CostumMenu(imageAssets: "assets/segitiga.PNG",title: "Segitiga")),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>PersegiPage()));
              },
              child: CostumMenu(imageAssets: "assets/jajar.PNG",title: "JajarGenjang")),
          Row(
          children: [
              Expanded(child: CostumMenu(imageAssets: "assets/persegipanjang.PNG",title: "Persegi Panjang")),
              Expanded(child: CostumMenu(imageAssets: "assets/segitiga.PNG",title: "Segitiga")),
              Expanded(child: CostumMenu(imageAssets: "assets/segitiga.PNG",title: "Segitiga")),
            ],
          ),
        ],
      ),

    );
  }
}

class CostumMenu extends StatelessWidget {
  const CostumMenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.blue),
      child: Column(
        children: [
          Image.asset(
            imageAssets,
            height: 120,
          ),
          Text(title),
        ],
      ),
    );
  }
}

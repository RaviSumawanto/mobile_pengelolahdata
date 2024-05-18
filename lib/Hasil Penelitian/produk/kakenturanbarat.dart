import 'package:flutter/material.dart';
import 'package:testingdatabase/Hasil%20Penelitian/produk/sinisir.dart';

class pkakenturanbarat extends StatelessWidget {
  const pkakenturanbarat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back))
      ], title: const Text("Produk")),
      body: ListView(
        children: [
          Container(
            height: 1200,
            padding: const EdgeInsets.only(top: 15),
            child: const Column(
              children: [
                ListProduk(
                  Picture: "images/tomat.png",
                  titledata: "Tomat",
                ),
                ListProduk(
                  Picture: "images/kentang.png",
                  titledata: "Kentang",
                ),
                ListProduk(
                  Picture: "images/sawi.png",
                  titledata: "Sawi Putih",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

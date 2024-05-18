import 'package:flutter/material.dart';

class psinisir extends StatelessWidget {
  const psinisir({super.key});

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
                  Picture: "images/kubis.png",
                  titledata: "Kubis",
                ),
                ListProduk(
                  Picture: "images/kentang.png",
                  titledata: "Kentang",
                ),
                ListProduk(
                  Picture: "images/tomat.png",
                  titledata: "Tomat",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListProduk extends StatelessWidget {
  final String Picture;
  final String titledata;

  const ListProduk({
    super.key,
    required this.Picture,
    required this.titledata,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 94, 94, 94),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                    height: 90,
                    width: 90,
                    margin: const EdgeInsets.only(right: 15),
                    child: Image.asset(Picture)),
                Text(
                  textAlign: TextAlign.center,
                  titledata,
                  style: const TextStyle(
                    fontSize: 30,
                    fontFamily: "Righteous",
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

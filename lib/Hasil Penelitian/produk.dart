import 'package:flutter/material.dart';
import 'package:testingdatabase/Halaman%20Utama/listview.dart';
import 'package:testingdatabase/Hasil%20Penelitian/produk/kakenturan.dart';
import 'package:testingdatabase/Hasil%20Penelitian/produk/kakenturanbarat.dart';
import 'package:testingdatabase/Hasil%20Penelitian/produk/linelean.dart';
import 'package:testingdatabase/Hasil%20Penelitian/produk/maakaroyen.dart';
import 'package:testingdatabase/Hasil%20Penelitian/produk/mokobang.dart';
import 'package:testingdatabase/Hasil%20Penelitian/produk/palelon.dart';
import 'package:testingdatabase/Hasil%20Penelitian/produk/pinasungkulan.dart';
import 'package:testingdatabase/Hasil%20Penelitian/produk/pinasungkulanutara.dart';
import 'package:testingdatabase/Hasil%20Penelitian/produk/sinisir.dart';
import 'package:testingdatabase/Hasil%20Penelitian/produk/wulurmaatus.dart';

class produk extends StatelessWidget {
  const produk({super.key});

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
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 185, 185, 185),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                ListData(
                  Picture: "images/produk.png",
                  titledata: "Sinisir",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const psinisir();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/produk.png",
                  titledata: "Pinasungkulan",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const ppinasungkulan();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/produk.png",
                  titledata: "Pinasungkulan/nUtara",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const ppinasungkulanutara();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/produk.png",
                  titledata: "Kakenturan",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const pkakenturan();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/produk.png",
                  titledata: "Kakenturan/nBarat",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const pkakenturanbarat();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/produk.png",
                  titledata: "Linelean",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const plinelean();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/produk.png",
                  titledata: "Maakaroyen",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const pmaakaroyen();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/produk.png",
                  titledata: "Palelon",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const ppalelon();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/produk.png",
                  titledata: "Wulurmaatus",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const pwulurmaatus();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/produk.png",
                  titledata: "Mokobang",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const pmokobang();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

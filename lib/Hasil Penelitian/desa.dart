import 'package:flutter/material.dart';
import 'package:testingdatabase/Halaman%20Utama/listview.dart';
import 'package:testingdatabase/Hasil%20Penelitian/desa/kakenturan.dart';
import 'package:testingdatabase/Hasil%20Penelitian/desa/kakenturanbarat.dart';
import 'package:testingdatabase/Hasil%20Penelitian/desa/linelean.dart';
import 'package:testingdatabase/Hasil%20Penelitian/desa/maakaroyen.dart';
import 'package:testingdatabase/Hasil%20Penelitian/desa/mokobang.dart';
import 'package:testingdatabase/Hasil%20Penelitian/desa/palelon.dart';
import 'package:testingdatabase/Hasil%20Penelitian/desa/pinasungkulan.dart';
import 'package:testingdatabase/Hasil%20Penelitian/desa/pinasungkulanutara.dart';
import 'package:testingdatabase/Hasil%20Penelitian/desa/sinisir.dart';
import 'package:testingdatabase/Hasil%20Penelitian/desa/wulurmaatus.dart';

class desa extends StatelessWidget {
  const desa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back))
      ], title: const Text("Desa")),
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
                  Picture: "images/perumahan.png",
                  titledata: "Sinisir",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const sinisir();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/perumahan.png",
                  titledata: "Pinasungkulan",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const pinasungkulan();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/perumahan.png",
                  titledata: "Pinasungkulan/nUtara",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const pinasungkulanutara();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/perumahan.png",
                  titledata: "Kakenturan",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const kakenturan();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/perumahan.png",
                  titledata: "Kakenturan/nBarat",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const kakenturanbarat();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/perumahan.png",
                  titledata: "Linelean",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const linelean();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/perumahan.png",
                  titledata: "Maakaroyen",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const maakaroyen();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/perumahan.png",
                  titledata: "Palelon",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const palelon();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/perumahan.png",
                  titledata: "Wulurmaatus",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const wulurmaatus();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/perumahan.png",
                  titledata: "Mokobang",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const mokobang();
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

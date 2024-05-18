import 'package:flutter/material.dart';
import 'package:testingdatabase/Halaman%20Utama/profil.dart';
import 'package:testingdatabase/Halaman%20Utama/tahun.dart';
import '../appBarCostume.dart';
import 'Diagram.dart';
import 'event.dart';
import 'hasilpertanian.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Appbarcostume(
            titlebar: 'Categories',
          ),
          Container(
            height: 655,
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
                  Picture: "images/hasil penelitian.png",
                  titledata: "Hasil Penelitian",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Hasilpenelitian();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/Diagram Penelitian.png",
                  titledata: "Perkembangan \nPenelitian",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return Perkembangan();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/tahun penelitian.png",
                  titledata: "TAHUN",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const tahun();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/event.png",
                  titledata: "Event",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const event();
                        },
                      ),
                    );
                  },
                ),
                ListData(
                  Picture: "images/profil.png",
                  titledata: "Profil",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Profil();
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

class ListData extends StatelessWidget {
  final String Picture;
  final String titledata;
  final void Function()? press;
  const ListData({
    super.key,
    required this.Picture,
    required this.titledata,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Column(
        children: <Widget>[
          Container(
            height: 90,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                    height: 90,
                    width: 90,
                    margin: const EdgeInsets.only(right: 15),
                    child: Image.asset(Picture)),
                Text(
                  titledata,
                  style: const TextStyle(fontSize: 20, fontFamily: "Righteous"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

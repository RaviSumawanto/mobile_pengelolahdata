import 'package:flutter/material.dart';
import 'package:testingdatabase/Halaman%20Utama/profil.dart';
import '../appBarCostume.dart';
import 'Diagram.dart';
import 'event.dart';
import 'hasilpertanian.dart';
import 'listview.dart';

class tahun extends StatelessWidget {
  const tahun({super.key});

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
                  Picture: "images/tahun.png",
                  titledata: "2023",
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
                  Picture: "images/tahun.png",
                  titledata: "2024",
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
                  Picture: "images/tahun.png",
                  titledata: "2025",
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
                  Picture: "images/tahun.png",
                  titledata: "2026",
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
                  Picture: "images/tahun.png",
                  titledata: "2027",
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

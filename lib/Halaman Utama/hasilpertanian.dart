import 'package:flutter/material.dart';
import '../Hasil Penelitian/desa.dart';
import '../Hasil Penelitian/harga.dart';
import '../Hasil Penelitian/laporan.dart';
import '../Hasil Penelitian/produk.dart';
import '../appBarCostume.dart';
import '../menu.dart';

class Hasilpenelitian extends StatelessWidget {
  const Hasilpenelitian({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
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
        child: GridView.count(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          crossAxisCount: 2,
          childAspectRatio: 1.1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: <Widget>[
            CategoryCard(
              Picture: "images/Desa.png",
              title: "Desa",
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const desa();
                    },
                  ),
                );
              },
            ),
            CategoryCard(
              Picture: "images/produk.png",
              title: "Product",
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const produk();
                    },
                  ),
                );
              },
            ),
            CategoryCard(
              Picture: "images/harga.png",
              title: "Harga",
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const harga();
                    },
                  ),
                );
              },
            ),
            CategoryCard(
              Picture: "images/laporan.png",
              title: "Laporan",
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const laporan();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      )
    ]));
  }
}

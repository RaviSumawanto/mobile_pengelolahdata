import 'package:flutter/material.dart';
import '../appBarCostume.dart';

class event extends StatelessWidget {
  const event({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const Appbarcostume(
        titlebar: 'EVENT',
      ),
      Image.asset('images/fest-kentang.jpg'),
      const Text(
        "FESTIVAL POTATO 2023",
        style: TextStyle(fontSize: 20, fontFamily: "Lugrasimo"),
      ),
      const Text(
        "Sumber : KompasTV Manado",
        style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
      ),
//---------------Deskripsi-------------//
      const Expanded(
        child: Text(
            "MINAHASA SELATAN. KOMPASTV. Guna mengangkat potensi wisata daerah pemerintah Kabupaten Minahasa Selatan bersama warga gereja di Kecamatan Modoinding menggelar festival kentang atau dikenal Modoinding Potato Festival. Even pariwisata lokal yang sudah ketujuh kali digelar ini berlangsung tiga hari 19 hingga 22 Oktober 2022. Acara puncak even modoinding potato festival  berlangsung meriah dengan pertunjukan karnaval kendaraan hias dengan bahan utama komoditi kentang dan beragam holtikultura lainya."),
      ),
    ]));
  }
}

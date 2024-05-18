import 'package:flutter/material.dart';
import 'package:testingdatabase/Halaman%20Utama/tahun.dart';
import '../menu.dart';
import 'event.dart';
import 'hasilpertanian.dart';
import 'listview.dart';
import 'Diagram.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .25,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("images/background.png"),
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color.fromARGB(255, 0, 255, 51),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Column(
                        children: <Widget>[
                          Text(
                            "Pengelola Data",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Righteous",
                              color: Color.fromARGB(255, 202, 172, 2),
                            ),
                          ),
                          Text(
                            "Hasil Panen",
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Righteous",
                                color: Color.fromARGB(255, 2, 144, 14)),
                          ),
                          Text(
                            "Kecamatan Modoinding",
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Righteous",
                                color: Color.fromARGB(255, 2, 144, 14)),
                          ),
                        ],
                      ),
                      Image.asset(
                        "images/Logo.png",
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 0, 184, 6),
                                ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Listview();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              "See All",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: Colors.blue, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: GridView.count(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          Picture: "images/hasil penelitian.png",
                          title: "Hasil Pertanian",
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
                        CategoryCard(
                          Picture: "images/Diagram Penelitian.png",
                          title: "Diagram",
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
                        CategoryCard(
                          Picture: "images/tahun penelitian.png",
                          title: "Tahun",
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
                        CategoryCard(
                          Picture: "images/event.png",
                          title: "Event",
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

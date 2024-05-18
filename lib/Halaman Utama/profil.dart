import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back_ios)),
        title: const Text("PROFIL", textAlign: TextAlign.center,),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: const Color.fromARGB(255, 86, 86, 86),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: const Column(
          children:  [
            Card(
                child: Text(
                  "Pengembang Aplikasi",
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 20, 218),
                    fontSize: 40,
                    fontFamily: "RampartOne",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

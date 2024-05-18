import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:testingdatabase/Halaman%20Utama/Homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();

    Future.delayed(const Duration(seconds: 5)).then((value){
      Navigator.of(context).pushReplacement(
    CupertinoPageRoute(builder: (ctx) => const Homepage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("images/Logo.png"),
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            SpinKitSquareCircle(
              color: Colors.white,
              size: 50.0,
            )
          ],
        ),
      ),
    );
  }
}

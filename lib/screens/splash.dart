import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_october/screens/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Login()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bag3.jpg"), fit: BoxFit.fill)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo2.png',
              height: 200,
              width: 200,
            ),
            Text(
              "Eat Healthy,Stay Healthy",
              style: GoogleFonts.pacifico(
                  color: Colors.black,
                  fontSize: 30,
                  fontStyle: FontStyle.italic),
            )
          ],
        ),
      ),
    ));
  }
}

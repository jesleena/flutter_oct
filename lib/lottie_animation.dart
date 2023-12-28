import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: LottieEx(),));
}
class LottieEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("lottie"),),
      body: Center(
        child: Lottie.asset("assets/animation/happy.json"),
        //child: Lottie.network("https://lottie.host/3db693de-d171-4d7b-b477-b2026a3673d2/bHZiYSr9B2.json"),
      ),
    );
  }
}

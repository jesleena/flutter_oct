import 'package:flutter_october/single_child_scrollview.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'lottie_animation.dart';

void main() {
  runApp(MaterialApp(
    home: OnBoardingEx(),
    debugShowCheckedModeBanner: false,
  ));
}

class OnBoardingEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecor = const PageDecoration(

        bodyTextStyle: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.red),
        titlePadding: EdgeInsets.all(5),
       imagePadding: EdgeInsets.all(5),
        boxDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.orange, Colors.yellow],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)));

    return IntroductionScreen(
      pages: [
        PageViewModel(
            decoration: pageDecor,
            ///must have either title or titleWidget
            ///must have either body or bodyWidget
             title: "",
            //body: "hhjjhjhjh",
            // image: Image.asset("assets/icons/delivery-bike.png")),
            image: Image.asset("assets/icons/order-food.png"),
            body: "Order Food"),
        PageViewModel(
            decoration: pageDecor,
            titleWidget: Image.asset("assets/icons/delivery-bike.png"),
            body: "Fast Delivery"),
        PageViewModel(
          decoration: pageDecor,
          titleWidget: Image.asset("assets/icons/food-delivery.png"),
          body: "Good Service",
        )
      ],
      next: const Text("Next"),
      showSkipButton: true,
      skip: Text("Skip"),
      done: Text("Continue"),
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Row1())),
      onSkip: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => LottieEx(),
      )),
      dotsDecorator: DotsDecorator(
          size: Size(20, 20),
          activeSize: Size(40, 20),
          color: Colors.black,
          activeColor: Colors.red,
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0))),
    );
  }
}

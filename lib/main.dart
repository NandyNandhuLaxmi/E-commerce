import 'package:ecomm_adhoc/home_screen/home.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget example5 = SplashScreenView(
      home: home(),
      duration: 4000,
      imageSize: 200,
      imageSrc: "Assets/images/adhoc_soft.png",
      text: "Adhoc Ecommerce",
      textType: TextType.ScaleAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );

    return MaterialApp(
      title: 'Splash screen Demo',
      debugShowCheckedModeBanner: false,  
      home: example5,
    );
  }
}
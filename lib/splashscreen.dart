// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'homepage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final Image splashScreenLogo = const Image(
    image: ExactAssetImage("assets/images/Digita-Global-logo.png"),
    height: 70.0,
    width: 160.0,
    alignment: FractionalOffset.center,
  );

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        width: 300.0,
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: splashScreenLogo,
      )),
      backgroundColor: const Color.fromRGBO(15, 51, 113, 1),
    );
  }
}

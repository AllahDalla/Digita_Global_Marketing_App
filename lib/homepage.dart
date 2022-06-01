// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'marketing-information.dart';
import 'graphic-design-page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final Image applogo = const Image(
    image: ExactAssetImage("assets/images/Digita-Global-logo.png"),
    height: 70.0,
    width: 160.0,
    alignment: FractionalOffset.center,
  );

  @override
  Widget build(BuildContext context) {
    void handleActionButton() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const GraphicPage(),
          ));
    }

    return (Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(9, 31, 68, 1),
          title: Center(
            child: applogo,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: const [MarketingInformation()],
        ),
      ),
      backgroundColor: const Color.fromRGBO(27, 92, 203, 0.7),
      floatingActionButton: FloatingActionButton(
        onPressed: handleActionButton,
        backgroundColor: const Color.fromRGBO(190, 105, 10, 1),
        child: const Icon(Icons.skip_next),
      ),
    ));
  }
}

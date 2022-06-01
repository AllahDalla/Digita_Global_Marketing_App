// ignore: file_names
import 'package:flutter/material.dart';
import 'graphic-information.dart';
import 'webdevpage.dart';

class GraphicPage extends StatelessWidget {
  final Image applogo = const Image(
    image: ExactAssetImage("assets/images/Digita-Global-logo.png"),
    height: 70.0,
    width: 160.0,
    alignment: FractionalOffset.center,
  );

  const GraphicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handleActionButton() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WebDevelopmentPage(),
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
          children: const [GraphicInformation()],
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

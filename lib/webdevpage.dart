import 'package:app/content-creation-information.dart';
import 'package:flutter/material.dart';
import 'webdevinformation.dart';
import 'content-creation-page.dart';

class WebDevelopmentPage extends StatelessWidget {
  final Image applogo = const Image(
    image: ExactAssetImage("assets/images/Digita-Global-logo.png"),
    height: 70.0,
    width: 160.0,
    alignment: FractionalOffset.center,
  );

  const WebDevelopmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handleActionButton() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ContentPage(),
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
          children: const [WebDevInformation()],
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

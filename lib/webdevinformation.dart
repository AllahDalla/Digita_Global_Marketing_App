import 'package:flutter/material.dart';

class WebDevInformation extends StatelessWidget {
  final Image webDevBanner = const Image(
    image: ExactAssetImage("assets/images/webdev-banner.jpg"),
    width: double.infinity,
  );

  final Text webDevText = const Text(
    "We conceptualize, wire frame and design modern websites. Our clients include individuals, corporations and organizations seeking a detailed, clean and functional approach to conveying their message.",
    textAlign: TextAlign.center,
    style: TextStyle(
      height: 3.0,
      fontSize: 14,
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
  );

  final Image webDevIcon = const Image(
    image: ExactAssetImage("assets/images/webdev-icon.png"),
    height: 200.0,
    width: double.infinity,
    // alignment: FractionalOffset.center,
  );

  const WebDevInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0.0),
      child: Column(
        children: [
          webDevBanner,
          Container(padding: const EdgeInsets.all(10.0), child: webDevText),
          webDevIcon
        ],
      ),
    );
  }
}

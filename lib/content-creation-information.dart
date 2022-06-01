import 'package:flutter/material.dart';

class ContentInformation extends StatelessWidget {
  final Image contentBanner = const Image(
    image: ExactAssetImage("assets/images/content-banner.jpg"),
    width: double.infinity,
  );

  final Text contentText = const Text(
    "Do you have an exciting idea that you want to bring to life? We've got the right mix of talent and creative skills to help you go from concept to reality. We have over 20 years experience creating rich and engaging visuals that help perfectly communicate your message.",
    textAlign: TextAlign.center,
    style: TextStyle(
      height: 3.0,
      fontSize: 14,
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
  );

  final Image contentIcon = const Image(
    image: ExactAssetImage("assets/images/content-icon.png"),
    height: 200.0,
    width: double.infinity,
    // alignment: FractionalOffset.center,
  );

  const ContentInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0.0),
      child: Column(
        children: [
          contentBanner,
          Container(padding: const EdgeInsets.all(10.0), child: contentText),
          contentIcon
        ],
      ),
    );
  }
}

// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MarketingInformation extends StatelessWidget {
  final Image marketingBanner = const Image(
    image: ExactAssetImage("assets/images/marketing-banner.jpg"),
    // height: double.maxFinite,
    width: double.infinity,
    // alignment: FractionalOffset.center,
  );

  final Image marketingIcon = const Image(
    image: ExactAssetImage("assets/images/marketing-icon.png"),
    height: 200.0,
    width: double.infinity,
    // alignment: FractionalOffset.center,
  );

  final Text marketingText = const Text(
    "Brands that take advantage of online marketing have reported as much as a 76% increase in both direct and indirect sales, as well as brand affinity! #TeamDigita offers winning digital solutions, inclusive of digital media marketing, strategy and content creation and online advertising.",
    textAlign: TextAlign.center,
    style: TextStyle(
      height: 3.0,
      fontSize: 14,
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
  );
  const MarketingInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0.0),
      child: Column(
        children: [
          marketingBanner,
          Container(padding: const EdgeInsets.all(10.0), child: marketingText),
          marketingIcon
        ],
      ),
    );
  }
}

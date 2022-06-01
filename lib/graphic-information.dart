import 'package:flutter/material.dart';

class GraphicInformation extends StatelessWidget {
  final Image graphicBanner = const Image(
    image: ExactAssetImage("assets/images/graphic-design-banner.webp"),
    width: double.infinity,
  );

  final Text graphicText = const Text(
    "Collectively, our team has more than 10 years of design experience both as ideators and executors of ground-breaking design concepts. From logos, flyers to brochures, signs and billboards, we are your one stop shop for amazingly engaging visuals.",
    textAlign: TextAlign.center,
    style: TextStyle(
      height: 3.0,
      fontSize: 14,
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
  );

  final Image graphicIcon = const Image(
    image: ExactAssetImage("assets/images/graphic-icon.png"),
    height: 200.0,
    width: double.infinity,
    // alignment: FractionalOffset.center,
  );

  const GraphicInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0.0),
      child: Column(
        children: [
          graphicBanner,
          Container(padding: const EdgeInsets.all(10.0), child: graphicText),
          graphicIcon
        ],
      ),
    );
  }
}

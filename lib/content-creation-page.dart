import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'content-creation-information.dart';
import 'homepage.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  final Image applogo = const Image(
    image: ExactAssetImage("assets/images/Digita-Global-logo.png"),
    height: 70.0,
    width: 160.0,
    alignment: FractionalOffset.center,
  );

  var urlLink = 'https://digitaglobalredesign.000webhostapp.com';
  int _selectedIndex = 0;

  // ignore: non_constant_identifier_names
  void _LaunchURL(String url) async {
    try {
      await launch(url);
    } catch (e) {
      throw 'could not launch $url because of $e';
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
            (route) => false);
      } else if (index == 1) {
        _LaunchURL(urlLink);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(9, 31, 68, 1),
          title: Center(
            child: applogo,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: const [ContentInformation()],
        ),
      ),
      backgroundColor: const Color.fromRGBO(27, 92, 203, 0.7),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Back to Top',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.web_rounded),
            label: 'To Web',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: const Color.fromRGBO(9, 31, 68, 1),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:gallery/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 38, 172, 43),
        fontFamily: 'Sen',
      ),
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/HomePage.dart';
void main() {
  runApp(Toku());
}
class Toku extends StatefulWidget {

  @override
  State<Toku> createState() => _TokuState();
}

class _TokuState extends State<Toku> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}



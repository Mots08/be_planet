import 'package:be_planet/src/pages/login.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(BePlanet());
 
class BePlanet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Be PLanne App',
      debugShowCheckedModeBanner: false,
      home: Login()
    );
  }
}
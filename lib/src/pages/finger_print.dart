import 'package:be_planet/src/pages/home.dart';
import 'package:flutter/material.dart';

class FingerPrint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Huella de Carbono'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              child: Image.asset('images/finger.jpeg'),
            ),
          )
    );
  }
}
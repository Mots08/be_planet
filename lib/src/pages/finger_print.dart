import 'package:flutter/material.dart';

class FingerPrint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Container(
              child: Image.asset('images/finger.jpeg'),
            ),
          )
    );
  }
}

import 'package:flutter/material.dart';

class ReciclarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body:
          GestureDetector(
            onTap: () {
              Navigator.pop(context);

            },
            child: Container(
              child: Image.asset('images/Reciclapp.jpeg'),
            ),
          )
    );

  }


}
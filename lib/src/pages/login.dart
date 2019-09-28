import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _key = GlobalKey();
  String _correo;
  String _contrasenia;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.green,
      ),
      body: _loginForm()
    );
  }
}

Widget _loginForm(){
  
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.all(50.0),
        width: 350.0,
        child: Form(
          //key: _key,
          child: Column(
            children: <Widget>[
              //Image(image: null),
              TextFormField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  labelText: "Correo",
                  icon: Icon(Icons.email)
                ),
                //onSaved: (text) => _correo = text,
              ),
              TextFormField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  labelText: "Contrseña",
                  icon: Icon(Icons.vpn_key)
                ),
                //onSaved: (text) => _correo = text,
              ),
              Divider(),
              RaisedButton(
                color: Colors.green,
                onPressed: () {},
                child: Column(
                  children: <Widget>[
                    Icon(Icons.arrow_forward, color: Colors.white, semanticLabel: "Ingresar",)
                  ],
                ),
              ),
              Divider(),
              RaisedButton(
                child: Text("Ingrese con Facebook"),
                color: Colors.blue,
                onPressed: (){},
              ),
              RaisedButton(
                child: Text("Ingrese con su cuenta de Google"),
                color: Colors.red,
                onPressed: (){},
              ),
              Text("ó"),
              Divider(),
              RaisedButton(
                child: Text("Registrese"),
                color: Colors.blue,
                onPressed: (){},
              )
            ],
          )
        ),
      ),
      
    ],
  );
}
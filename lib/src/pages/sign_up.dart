
import 'package:be_planet/src/pages/login.dart';
import 'package:flutter/material.dart';


class RegistroUsuario extends StatefulWidget {


  @override
  _RegistroUsuarioState createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registro'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body:_datosRegistro(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: botonRegistro(context),

    );
  }
}

Widget _datosRegistro(){

   return Column(
      mainAxisAlignment: MainAxisAlignment.center,  
      children: <Widget> [
      Container(
        margin: const EdgeInsets.all(50.0),
        width: 300.0,
        child: Form(
          key: _key,
          child: Column(
            children:<Widget>[
       TextFormField( decoration: InputDecoration(labelText: 'Ingresa tu usuario', icon: Icon(Icons.account_circle))),
        Divider(),
       TextFormField( decoration: InputDecoration(labelText: 'Correo electronico', icon: Icon(Icons.email))),
        Divider(),
       TextFormField( decoration: InputDecoration(labelText: 'Contraseña', icon: Icon(Icons.security)),obscureText: true),
        Divider(height: 20.0),
       RaisedButton(child: Icon(Icons.alternate_email, size: 55,),color: Colors.redAccent,onPressed: (){})]
           )
         )
       )
     ]
  );
}

Widget botonRegistro(context){
  return FloatingActionButton (heroTag: "registroCompleto", child: Icon(Icons.arrow_forward, size: 55,), backgroundColor: Colors.green, onPressed: () {
    //Registrar y seguir a "PREGUNTAS HUELLAS DE CARBÓN"
    //Reemplazar el MyApp por la pagina correspondiente 
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  });
}


GlobalKey<FormState> _key = GlobalKey();
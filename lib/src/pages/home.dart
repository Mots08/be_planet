import 'package:be_planet/src/pages/profile_page.dart';
import 'package:be_planet/src/pages/reciclar_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  @override
  createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  final _estilotitulo = new TextStyle(fontSize: 20);
  final _estilodescripcion  = new TextStyle(fontSize: 13);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BePlanet'),
          centerTitle: true,
        ),
        body:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _crearOpcion(
                    "Perfil",
                    "Aca podras ver tu avance, y como contribuyes a disminuir "
                        "tu huella de carbono",
                    Icons.account_box,tapProfile),
                _crearOpcion(
                    "Retos",
                    "Tendras pequeños retos semanales que debes intentar realizar.",
                    Icons.assistant_photo,tapRetos),
                _crearOpcion(
                    "Plantapp",
                    "Sabias que plantar un arbol, hace el mismo trabajo que"
                        " 47 aires acondicionados. \nDescubre como ayudar",
                    Icons.favorite,tapPlantapp),
                _crearOpcion(
                    "Reciclar",
                    "Quieres reciclar, pero ...\n¿Pero no sabes como?\n"
                        "¿Tienes dudas sobre como usar las canecas "
                        "correctamente? \nAveriguemos juntos como hacerlo.",
                    Icons.cached,tapReciclar),

              ],
            )
        ),
    );
  }


  Widget _crearOpcion(String titulo, String descripcion, IconData icon, Function tap) {

      String botonText = titulo.toUpperCase();
      return Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               ListTile(
                leading: Icon(icon),
                title: Text(titulo,style:_estilotitulo),
                subtitle: Text(descripcion, style: _estilodescripcion),
                 onTap: tap
              ),
              ButtonTheme.bar(
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: Text(botonText),
                      onPressed: tap,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

void tapProfile(){
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()));
}

  void tapRetos(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()));
  }

  void tapPlantapp(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfilePage()));
  }

  void tapReciclar(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ReciclarPage()));
  }

  }


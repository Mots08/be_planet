import 'package:flutter/material.dart';


class Retos extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _Retos(); 
}

class _Retos extends State<Retos> {


//Estado de contador por cada reto

  int _retoUno = 0;
  int _retoDos = 0;
  int _retoTres = 0;
  int _retoCuatro = 0;
  int _retoCinco = 0;
  int _retoSexto = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title:Text('Retos semanales'),
      backgroundColor: Colors.green,
      centerTitle: true,
    ),
    
    //We go to have Rows inside of columns to ilustrate each challange in a different column


    body: listaRetos()
    );
  }



  Widget listaRetos(){

  return  CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 40,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.green[100],
            child: Column(
                children: <Widget>[ 
                  const Text('Lleva contigo un set de cubiertos, con eso evitaras el uso de más plástico.')
                , Divider(height: 10),
                //Parte de abajo de cada container (Tarjeta)
                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Text('$_retoUno',style: TextStyle(fontSize: 20) ,),
                    SizedBox(width: 34),
                 //Botón de cada tarjeta (Reto)
                    _botonPrimerReto()],
                )
              ]
            )
          ), 

          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.green[200],
            child: Column(
                children: <Widget>[ 
                  const Text('Evita usar Icopor durante esta semana.')
                , Divider(height: 20),
                //Parte de abajo de cada container (Tarjeta)
                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Text('$_retoDos',style: TextStyle(fontSize: 20) ,),
                    SizedBox(width: 34),
                 //Botón de cada tarjeta (Reto)
                    _botonSegundoReto()],
                )
              ]
            )
            
          ), 

          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.green[300],
            child: Column(
                children: <Widget>[ 
                  const Text('Recicla el agua de la ducha mientras te bañas, o lavadora.')
                , Divider(height: 20),
                //Parte de abajo de cada container (Tarjeta)
                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Text('$_retoTres',style: TextStyle(fontSize: 20) ,),
                    SizedBox(width: 34),
                 //Botón de cada tarjeta (Reto)
                    _botonTercerReto()],
                )
              ]
            )
          ), 
          
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.green[400],
            child: Column(
                children: <Widget>[ 
                  const Text('Trae tu pocillo para evitar vasos de papel o plástico.')
                , Divider(height: 20),
                //Parte de abajo de cada container (Tarjeta)
                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Text('$_retoCuatro',style: TextStyle(fontSize: 20) ,),
                    SizedBox(width: 34),
                 //Botón de cada tarjeta (Reto)
                    _botonCuartoReto()],
                )
              ]
            )
          ), 

          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.green[500],
            child: Column(
                children: <Widget>[ 
                  const Text('Apaga y desconecta tus aparatos electronicos')
                , Divider(height: 20),
                //Parte de abajo de cada container (Tarjeta)
                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Text('$_retoCinco',style: TextStyle(fontSize: 20) ,),
                    SizedBox(width: 34),
                 //Botón de cada tarjeta (Reto)
                    _botonQuintoReto()],
                )
              ]
            )
          ),

           Container(
            padding: const EdgeInsets.all(20),
            color: Colors.green[600],
            child: Column(
                children: <Widget>[ 
                  const Text('Reutiliza tus bolsas (Evitara el uso de más plástico)')
                , Divider(height: 20),
                //Parte de abajo de cada container (Tarjeta)
                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Text('$_retoSexto',style: TextStyle(fontSize: 20) ,),
                    SizedBox(width: 34),
                 //Botón de cada tarjeta (Reto)
                    _botonSextoReto()],
                )
              ]
            )
          ),
        ],
      ),
    ),
  ],
);
}

  Widget _botonPrimerReto(){

    return FloatingActionButton(child: Icon(Icons.add,color: Colors.white),backgroundColor: Colors.green[100],
    onPressed: (){setState(() => _retoUno++);
      }
   );
}


  Widget _botonSegundoReto(){

    return FloatingActionButton(child: Icon(Icons.add,color: Colors.white),backgroundColor: Colors.green[200],
    onPressed: (){setState(() => _retoDos++);
      }
   );
}

Widget _botonTercerReto(){

    return FloatingActionButton(child: Icon(Icons.add,color: Colors.white),backgroundColor: Colors.green[300],
    onPressed: (){setState(() => _retoTres++);
      }
   );
}

Widget _botonCuartoReto(){

    return FloatingActionButton(child: Icon(Icons.add,color: Colors.white),backgroundColor: Colors.green[400],
    onPressed: (){setState(() => _retoCuatro++);
      }
   );
}

Widget _botonQuintoReto(){

    return FloatingActionButton(child: Icon(Icons.add,color: Colors.white),backgroundColor: Colors.green[500],
    onPressed: (){setState(() => _retoCinco++);
      }
   );
}

Widget _botonSextoReto(){

    return FloatingActionButton(child: Icon(Icons.add,color: Colors.white),backgroundColor: Colors.green[600],
    onPressed: (){setState(() => _retoSexto++);
      }
   );
}
} 
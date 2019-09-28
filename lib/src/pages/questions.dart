import 'package:be_planet/src/pages/finger_print.dart';
import 'package:be_planet/src/pages/login.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Questions extends StatefulWidget {
   QuestionsState createState() =>  QuestionsState();
}

class  QuestionsState extends State<Questions> {
  int contador = 0;
  int contador2 = 1;
  String pregunta = "";

  @override
  void initState() { 
    super.initState();
    pregunta = _getQuestion();
  }
  
  @override
  Widget build(BuildContext context) {
    _getQuestion();
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcula tú huella de carbono"),
        backgroundColor: Colors.green,
      ),
      body: _questionsBody(),
    );
  }
  Widget _questionsBody(){
  final TextStyle style = new TextStyle(fontSize: 25);

  return Column(
    children: <Widget>[
      Center(
        child: Column(
          children: <Widget>[
            Text("Pregunta $contador2 \n $pregunta", style: style),
            TextFormField(
                textAlign: TextAlign.left,
              ),
            Divider(),
            RaisedButton(
                child: Icon(Icons.arrow_forward),
                color: Colors.green,
                onPressed: (){
                  setState(() {
                    if(contador < 7){
                      contador++;
                      contador2++;
                      pregunta = _getQuestion();
                    }else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FingerPrint()));
                    }
                  });
                },
              )
          ],
         
        )
      )
    ],
    mainAxisAlignment: MainAxisAlignment.center
  );
}

String _getQuestion(){
  // List<int> usedQuestions = [];
  List<String> questions = [
  "¿Cuántas personas viven en tu casa?", 
  "¿Aproximadamente, cuánto pagas al mes por el servicio de energía eléctrica?", 
  "¿Cuántos cilindros de gas (de 10 libras) usas al mes? (si no aplica seleccionar siguiente)", 
  "¿Cuánto pagas al mes por el servicio de gas domiciliario?", 
  "¿Tienes veces a la semana usas tu vehículo?", 
  "¿Cuánto gastas en gasolina por semana?", 
  "¿Cuánto gastas en diésel o ACPM por semana?", 
  "¿Cuánto gastas en Gas Natural Vehicular por semana?"];
  // Random rng = new Random();
  // int questionNumber = rng.nextInt(3);
  // usedQuestions.add(questionNumber);
  
  // if(!questions.contains(questionNumber)){
  //   print(questions[questionNumber]);
    
  // }
  return questions[contador];
}
}


import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  
  runApp(MaterialApp(
    title: 'Flutter Aplication',
    debugShowCheckedModeBanner: false,
    home: HomeStateFul(),
  ));

}

class HomeStateFul extends StatefulWidget {
  const HomeStateFul({Key? key}) : super(key: key);

  @override
  _HomeStateFulState createState() => _HomeStateFulState();
}

class _HomeStateFulState extends State<HomeStateFul> {

  var frases = ["...O choro pode durar uma noite, mas a alegria vem pela manhã (SL, 30:5)","Bem-aventurados os que guardam os seus testemunhos "
  "e o buscam de todo o coração.(SL, 119:2)","Os céus declaram a glória de Deus e o firmamento anuncia a obra das suas mãos. (SL, 19:1)"];

  late String fraseAleatoria = "Aperte o botão";

  void gerarFrasesAleatorias(){
    var numAleatorio = Random().nextInt(frases.length);
    fraseAleatoria = frases[numAleatorio];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(width: 3,color: Colors.amber)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image(image: AssetImage('imagens/logo.png',
              ),fit: BoxFit.contain,),
            Text("$fraseAleatoria",textAlign: TextAlign.center,style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold
            ),),
            ElevatedButton(onPressed: (){
              setState(() => gerarFrasesAleatorias());
            }, child: Text("Nova Frase",), style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onPrimary: Colors.black
            ),)
            ],
          ),
        ),
        ),
      );
  }
}



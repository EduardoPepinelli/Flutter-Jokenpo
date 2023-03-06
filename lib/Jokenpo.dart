import 'dart:html';
import 'package:flutter/material.dart';
import 'dart:math';
class jogo extends StatefulWidget {

  @override
  _jogoState createState() => _jogoState();
}

class _jogoState extends State<jogo> {

var _imageApp = AssetImage ("Images/padrao.png");
var _message =   "Escolha uma opção abaixo";
var userWin = 0;
var machWin = 0;
 
  void _option(String userOption){ 
    var Op = ["pedra", "papel", "tesoura"];
    var number = Random().nextInt(Op.length);
    var machOp = Op[number];  

    switch(machOp){
      
      case "pedra":
      setState(() {
        this._imageApp = AssetImage ("Images/pedra.png");
      });
      break;
      
      case "papel":
      setState(() {
        this._imageApp = AssetImage ("Images/papel.png");
      });
      break;
      
      case "tesoura":
      setState(() {
        this._imageApp = AssetImage ("Images/tesoura.png");
      });
      break;
    }
    //Validação vencedor
    //usuaro vence
    if(
      (userOption == "pedra" && machOp == "tesoura") ||
      (userOption == "papel" && machOp == "pedra") ||
      (userOption == "tesoura" && machOp == "papel")
      ) {
      userWin ++;
      var userScore = userWin;
      this._message = "Parabéns você venceu!";
      print(userScore);
    }
    else if (
      (machOp == "pedra" && userOption == "tesoura") ||
      (machOp == "tesoura" && userOption == "papel") ||
      (machOp == "papel" && userOption == "pedra")
    ) {
      machWin ++;
      var machScore = machWin;
      this._message = "Que pena, você perdeu!";  
      print(machScore);
    } 
    else {
      setState(() {
        this._message = "Empate!";
      });
    }
  }


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("jokenpo"),

      ) ,
   
    body: 
 
    Column(  
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
            ),
          child: Text(
          "PLACAR: USUÁRIO: $userWin X MÁQUINA: $machWin",
          textAlign: TextAlign.center,
          style: TextStyle( 
            fontSize: 20,
            fontWeight: FontWeight.bold, 
            color: Colors.white,
             )
           ),
        ),
        Padding(padding: EdgeInsets.only(top: 32, bottom: 16,),
        child: Text(
          "Escolha do app",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
           ),
          ), 
         ),     
         Image(image: this._imageApp,),
        Padding(padding: EdgeInsets.only(top: 32, bottom: 16,),
        child: Text(
          this._message,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
           ),
         ),
        ), 
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap:() => _option("pedra"),
              child:Image.asset("Images/pedra.png", height: 100,),
            ),
            GestureDetector(
              onTap:() => _option("papel"),
              child:Image.asset("Images/papel.png", height: 100,),
              ),
            GestureDetector(
              onTap:() => _option("tesoura"),
              child:Image.asset("Images/tesoura.png", height: 100,),
            ),

          
           ],
         ),
       
        ],
      ) ,
    );
  }
}
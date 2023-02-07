import 'package:flutter/material.dart';
import 'package:myapp/lesson.dart';
import 'dart:math';
class HomePage  extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 void _Coin(){
      var itens = ["cara", "coroa"];
      var number = Random().nextInt(itens.length);
      var result = itens[number];
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => lesson(result)
   )
   );
 }
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.only(top: 150),
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.asset(
              "images/logo.png" 
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: _Coin, 
                    child: Image.asset("Images/botao_jogar.png"),
                  )
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
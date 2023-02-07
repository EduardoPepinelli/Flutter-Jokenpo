import 'package:flutter/material.dart';
class  lesson extends StatefulWidget {
String valor;
lesson(this.valor);
  @override
  _lessonState createState() => _lessonState();
}
class _lessonState extends State<lesson> {
  @override
  Widget build(BuildContext context) {
       var image = "images/moeda_cara.png";
    if(widget.valor == "cara"){
        image = "images/moeda_cara.png";
    }else{
      image = "images/moeda_coroa.png";
    }
    print(widget.valor);
    return Scaffold(
     backgroundColor:  Color(0xff61bd86),
     body: Container(
       alignment: Alignment.center ,
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
            Image.asset(image),
            GestureDetector(
              onTap: (){
                Navigator.pop(
                  context
                  );
                 },
                 child: Image.asset("images/botao_voltar.png"),      
                 )
                ],
               ),
              ),
             );
            }
           }
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';
  class campotexto extends StatefulWidget {
    @override
    _campotextoState createState() => _campotextoState();
  }
  
  class _campotextoState extends State<campotexto> {
    TextEditingController _textEditingController = TextEditingController();
    TextEditingController _input = TextEditingController();
    String _textoResultado = "";
    void _calcular() {
      var repAlcool = _textEditingController.text.replaceAll(',', '.');
      var repGas = _input.text.replaceAll(',', '.');
      var precoAlcool = double.tryParse(repAlcool);
      var precoGasolina = double.tryParse(repGas);
      var result = ( precoAlcool! / precoGasolina! );
      if (  result >= 0.7  ){
           setState(() {
             _textoResultado = "Abasteça com Gasolina";
           });
      } else {
        setState(() {
          _textoResultado = "Abasteça com Etanol";
        });
     print(_textoResultado);
      }
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Gasolina ou Alcool"),
          ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(32),
              child: Image.asset("Images/logo.png"),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Text("Saiba qual a melhor opção para abastecer o seu veículo",
                textAlign: TextAlign.center ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            CustomInput(textEditingController: _textEditingController, placeholder:"Preço do Alcool"),
            CustomInput(textEditingController: _input, placeholder: "Preço da Gasolina"),
            ElevatedButton(
              onPressed:() {
                _calcular();
              }, 
              child: Text("Calcular",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.blue)
            )
           ) // shape
          ),
         ), 
     Visibility(
       child:Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
          ),
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(15),
          child: Text(
            _textoResultado,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white
            ),
          ),
        ),
        visible: _textoResultado == ''? false:true,
     ),
    ],   // Children
   ), 
  ),
 )
);

 } // _campostextoState
} // campotexto

  class CustomInput extends StatefulWidget {
    const CustomInput({
      Key? key,
      required TextEditingController textEditingController,
      required this.placeholder,
    }) : _textEditingController = textEditingController, super(key: key);

    final TextEditingController _textEditingController;
    final String placeholder;

    @override
    State<CustomInput> createState() => _CustomInputState();
  }

  class _CustomInputState extends State<CustomInput> {
    @override
    Widget build(BuildContext context) {
      return Padding(
      padding: EdgeInsets.fromLTRB(32, 32, 32, 0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: widget.placeholder,
          ),
            maxLength: 5,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            style: TextStyle(
              fontSize: 25,
              color: Colors.blue,
            ), 
      controller: widget._textEditingController,
        ),
      );
    }
  }
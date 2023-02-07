import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class mainPet extends StatefulWidget {
  const mainPet({ Key? key }) : super(key: key);

  @override
  _mainPetState createState() => _mainPetState();
}

class _mainPetState extends State<mainPet> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
              color: Color(0xFFFFB803),
   ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: SvgPicture.network(
              'data:image/svg+xml,%3Csvg xmlns="http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg" width="1em" height="1em" viewBox="0 0 24 24"%3E%3Cpath fill="currentColor" d="M4.85 22v-9.6l-.275-.275q-.275-.275-.425-.65Q4 11.1 4 10.7t.15-.762q.15-.363.425-.638L7.85 6h4l4-4l2.05 2.05q1 1 1.55 2.262Q20 7.575 20 9q0 1.425-.55 2.688q-.55 1.262-1.55 2.262L15.85 16v6Zm2-2h7v-4.825l2.625-2.625q.725-.725 1.125-1.625T18 9q0-1-.413-1.9q-.412-.9-1.112-1.625l-.625-.65L12.675 8h-4l-.575.575l1.675 1.675q.7.7 1.088 1.612q.387.913.387 1.913t-.375 1.913q-.375.912-1.1 1.637L6.85 14.4Z"%2F%3E%3C%2Fsvg%3E',
              height: 200,
              width: 200,
             ),
  ),
  Text(
      'PetShow',
      style: TextStyle(
        color: Colors.white,
        decoration: TextDecoration.none,
        )     
         ),
      
      
        
  
        ],
      ),
    );
    
 }
  }

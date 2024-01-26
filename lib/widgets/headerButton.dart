 import 'package:flutter/material.dart';

Widget HeaderButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }){
    return TextButton(
          onPressed: (){}, child: Row(
            children: [Icon(buttonIcon,color: buttonColor,),
            Text(buttonText,style: TextStyle(color: Colors.black),)],
          ));
  }
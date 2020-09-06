
import 'package:flutter/material.dart';

class MyConstraints extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child:  Container(
        width: 100,
        height: 100,
        color:Colors.red,
      ),
    );
  }

}
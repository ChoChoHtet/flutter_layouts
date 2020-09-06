import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder:(_){
          return DetailScreen();
        }));
      },
      child:Hero(
          tag: 'imageHero',// object that identifies the hero must be same on both screen
          child:Image.network('https://picsum.photos/250?image=9')//widget to animate across the screen
      )
    );
  }
}
class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('Detail Screen')
    ),
     body: GestureDetector(
       onTap:(){
         Navigator.pop(context);
       },
       child: Hero(
           tag: 'imageHero',
           child:Center(
             child:  Image.network('https://picsum.photos/250?image=9'),
           ),)
     ),
   );
  }

}
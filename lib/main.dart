import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var imagesList= Row(crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset('assets/images/love_1.jpg',),
              ),
              Expanded(
                flex: 2,
                child: Image.asset('assets/images/love_2.jpg',),
              ),
              Expanded(
                flex: 3,
                child: Image.asset('assets/images/love_3.jpg',),
              ),
              Expanded(
                flex: 4,
                child: Image.asset('assets/images/love_4.jpg',),
              ),
            ],
          );

    var stars = Row(mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star,color: Colors.green[500],),
        Icon(Icons.star,color: Colors.green[500],),
        Icon(Icons.star,color: Colors.green[500],),
      ],
    );
    final ratings=Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          stars,
          Padding(padding: EdgeInsets.only(left: 15.0)),
          Text("170 Review",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontStyle: FontStyle.italic,
              fontSize:20
          ),),
        ],
      ),
    );
    final decTextStyle= TextStyle(
      fontSize: 18,
      fontFamily: 'Roboto',
      color: Colors.black,
      letterSpacing: 0.8,
      height: 2
    );
    final iconList= DefaultTextStyle.merge(
      style: decTextStyle,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen,color: Colors.green[500]),
                Text("PREP"),Text("23 min"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer,color: Colors.green[500]),
                Text("COOK"),Text("1 hr"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant,color: Colors.green[500]),
                Text("FEED"),Text("4-6"),
              ],
            )
          ],
        ));
    final title= Text('Strawberry Pavlova',style: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w900,
      fontSize: 23,
      letterSpacing: 0.8
    ),);
    final subTitle=Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
      child:Text('The layout framework allows you to nest rows and '
          'columns inside of rows and columns as deeply as you need.'
          ' Let’s look at the code for the outlined section of the following layout',style: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 19,
        letterSpacing: 0.8,
      ),) ,
    );
    final leftColumn=Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child:Column(
       children: [
         title,subTitle,ratings,iconList
       ],
      ) ,
    );
    return MaterialApp(
      title: 'Flutter Layouts Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layouts Demo'),),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              imagesList,leftColumn
            ],
          ),
        )
      ),

    );
  }

}


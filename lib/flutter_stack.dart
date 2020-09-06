import 'package:flutter/material.dart';

class MyStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget _buildStack() => Stack(
      alignment: Alignment(0.4,0.6),
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/love_1.jpg'),
          radius: 50,
        ),
        Container(
            decoration: BoxDecoration(
                color: Colors.black45
            ),
            child: Text('LISA',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),)
        )
      ],
    );
    Widget _buildCard() => SizedBox(
      height: 190,width: 300,
      child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ListTile(
                title: Text('Address'),
                subtitle: Text("City Mart, Yangon"),
                leading: Icon(Icons.restaurant_menu,color: Colors.blue[600],),
              ),
              Divider(),
              ListTile(
                title: Text('Contact'),
                leading: Icon(Icons.contact_phone,color: Colors.blue[600],),
              )
            ],
          )
      ),
    );
    final mainLayout = Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          _buildStack(),_buildCard()
        ],
      ),
    );
    return mainLayout ;
  }

}
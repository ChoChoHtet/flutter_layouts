
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight(BuildContext context, {double dividedBy = 1}) {
      return size.height / dividedBy;
    }

    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: size.height,
          child: Stack(
            overflow: Overflow.visible,
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
              Positioned(
                  top: screenHeight(context, dividedBy: 10),
                  child: Stack(
                    alignment: Alignment(1.3,0.8),
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/love_1.jpg'),
                        radius: 60,
                      ),
                      IconButton(icon: Icon(Icons.camera_alt),onPressed: (){},)
                    ],
                  )),
            ],
          ),
        )
      ],
    ));
  }
}

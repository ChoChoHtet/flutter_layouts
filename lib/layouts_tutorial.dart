import 'package:flutter/material.dart';
import 'package:flutter_layouts/flutter_interactivity.dart';

class Tutorials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _titleSection() => Container(
        padding: EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text('Oeschinen Lake Campground',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800)),
                  ),
                  Text(
                    'Kandersteg, Switzerlang',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            //Stateful Widget -> user interaction
            FavoriteWidget()
            //StatelessWidget
//            Icon(
//              Icons.star,
//              color: Colors.red,
//            ),

            //Text('41')
          ],
        ));
    Widget _buildButtonColumn(IconData icons, Color color, String label) =>
        Column(
          children: [
            Icon(icons, color: color),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(color: color, fontWeight: FontWeight.w500),
              ),
            )
          ],
        );
    Widget _buildButtonsSections() => Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButtonColumn(Icons.phone, Colors.blue, 'CALL'),
              _buildButtonColumn(Icons.near_me, Colors.blue, 'ROUTE'),
              _buildButtonColumn(Icons.share, Colors.blue, 'SHARE')
            ],
          ),
        );
    Widget _textSections() => Container(
          margin: EdgeInsets.all(32),
          child: Text(
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
            softWrap: true,
          ),
        );

    Widget _mainLayout() => ListView(
          children: [
            Image.asset(
              'assets/images/love_1.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            _titleSection(),
            _buildButtonsSections(),
            _textSections()
          ],
        );

    return _mainLayout();
  }
}

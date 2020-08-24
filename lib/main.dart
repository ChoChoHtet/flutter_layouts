import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildDecoratedImage(int imgIndex) => Expanded(
            child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          margin: EdgeInsets.all(8),
          child: Image.asset('assets/images/love_$imgIndex.jpg'),
        ));
    Widget _buildImageRow(int imgIndex) => Row(
          children: [
            _buildDecoratedImage(imgIndex),
            _buildDecoratedImage(imgIndex + 1)
          ],
        );
    Widget _buildImageColumn() => Container(
          //change background
          decoration: BoxDecoration(color: Colors.green),
          child: Column(
            children: [_buildImageRow(1), _buildImageRow(3)],
          ),
        );

    return MaterialApp(
      title: 'Flutter Layouts Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Layouts Demo'),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // imagesList,leftColumn
                _buildImageColumn()
              ],
            ),
          )),
    );
  }
}

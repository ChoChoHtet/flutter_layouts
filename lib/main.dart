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
    List<Container> _buildGridTile(int count) => List.generate(count,
        (i) =>Container(
          child: Image.asset('assets/images/love_$i.jpg')
        )
       );
    Widget _buildGrid() => GridView.extent(maxCrossAxisExtent: 200,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 20,
      crossAxisSpacing: 4,
      children: _buildGridTile(6),
    );
    return MaterialApp(
      title: 'Flutter Layouts Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Layouts Demo'),
          ),
          body: _buildGrid(),
      )
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layouts/todo/Todo.dart';

class ToDoDetailScreen extends StatelessWidget {
//  final Todo todo;
//  ToDoDetailScreen({Key key, @required this.todo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //second way extract the arguments
    final Todo todo = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(title: Text(todo.title)),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(16), child: Text(todo.description)),
            Padding(
              padding: EdgeInsets.all(16),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'Agree');
                },
                child: Text('Agree'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'Disagree');
                },
                child: Text('Disagree'),
              ),
            )
          ],
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layouts/flutter_interactivity.dart';
import 'package:flutter_layouts/flutter_manage_own_state.dart';
import 'package:flutter_layouts/flutter_navigation.dart';
import 'package:flutter_layouts/flutter_parent_manage_state.dart';
import 'package:flutter_layouts/layouts_tutorial.dart';
import 'package:flutter_layouts/myconstraints.dart';
import 'package:flutter_layouts/profile_container.dart';
import 'package:flutter_layouts/todo/ToDoMainScreen.dart';
import 'package:flutter_layouts/todo/Todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layouts Demo',
      home: Scaffold(
        //backgroundColor: Colors.blue,
          appBar: AppBar(
            elevation: 0,
            title: Text('Flutter Layouts Demo'),
          ),
          body:ToDoMainScreen(
           todos: List.generate(
               20, (i) =>Todo(i,'To Do $i', 'A description what you need to be done for To do $i')),
          ),
      )
    );
  }
}

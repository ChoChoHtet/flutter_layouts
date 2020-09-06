import 'package:flutter/material.dart';
import 'package:flutter_layouts/todo/ToDoDetailScreen.dart';
import 'package:flutter_layouts/todo/Todo.dart';

class ToDoMainScreen extends StatelessWidget {
  final List<Todo> todos;

  //require to do list
  ToDoMainScreen({Key key, @required this.todos}) : super(key: key);

  // A method that launches the SelectionScreen and awaits the result from
  // Navigator.pop.
  _navigateAndDisplaySelection(BuildContext context, Todo todo) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ToDoDetailScreen(),
            settings: RouteSettings(arguments: todo)));
    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result.
    if (result != null) {
      Scaffold.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text('$result')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              _navigateAndDisplaySelection(context, todos[index]);
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => ToDoDetailScreen(),
//                      // Pass the arguments as part of the RouteSettings. The
//                      // DetailScreen reads the arguments from these settings.
//                      settings: RouteSettings(
//                      arguments: todos[index]
//                    )
//                  )
//                  //ToDoDetailScreen(todo: todos[index],))
//                  );
            },
          );
        });
  }
}

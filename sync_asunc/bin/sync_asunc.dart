import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  final todo = await fetch();
  print(todo);
}

Future<Todo> fetch() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  var todo = Todo.fromJson(json);
  return todo;
}

class Todo {
  final String title;
  final int id;
  final int userId;
  final bool completed;

  Todo(this.title, this.id, this.userId, this.completed);

  factory Todo.fromJson(Map){
    return Todo(
      id: json['id'],
      completed: json['completed'];
      userId: json['userid'],
      );
  }
}

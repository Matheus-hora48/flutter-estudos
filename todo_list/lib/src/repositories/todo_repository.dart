import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_list/src/models/todo_model.dart';

class TodoRepository {
  late Dio dio;
  final String url = 'https://jsonplaceholder.typicode.com/todos';

  TodoRepository([Dio? client]) {
    dio = client ?? Dio();
  }

  Future<List<TodoModel>> fecthTodos() async {
    final response = await dio.get(url); // faz a requisiçao http da api
    final list = response.data
        as List; // cria uma lista com o resultado da requisição acessado pelo metodo data

    return list.map((json) => TodoModel.fromJson(json)).toList();
  }
}

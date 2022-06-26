import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/src/controllers/home_controller.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

class TodoRepositoryMock extends Mock implements TodoRepository {}

void main() {
  final controller = HomeController();

  test('Deve preeencher variavel todos', () {});
}

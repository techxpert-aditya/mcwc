import 'package:mcwc/const/const.dart';

class TodoController extends GetxController {
  var todos = <Todo>[].obs;
  TextEditingController textEditingController = TextEditingController();

  void addTodo({required String title}) {
    todos.add(Todo(
      title: title,
    ));
  }

  void removeTodo({required int index}) {
    todos.removeAt(index);
  }
}

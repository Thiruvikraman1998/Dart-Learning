class Todo {
  String id;
  String todoText;
    List get todoList => [Todo(id: '1', todoText: 'Morning Jog')];

  Todo({required this.id, required this.todoText});

  // static List<Todo> todoList() {
  //   return [Todo(id: '1', todoText: 'Morning Jog')];
  // }
}

void main() {
  var allList = Todo(id: '1', todoText: 'Evening jog');
    print(allList.todoList);
}

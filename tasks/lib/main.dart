import 'package:flutter/material.dart';
import 'package:tasks/pages/todo_list_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToDoListPage(),
    );
  }
}

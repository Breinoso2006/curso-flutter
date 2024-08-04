import 'package:flutter/material.dart';

class ToDoListPage extends StatelessWidget {
  ToDoListPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Add a new task",
                  hintText: "Ex. Buy food for my pet",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("+"),
            ),
          ],
        ),
      ),
    );
  }
}

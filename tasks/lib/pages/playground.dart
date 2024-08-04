import 'package:flutter/material.dart';

class ToDoListPage extends StatelessWidget {
  ToDoListPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                onChanged: onChanged,
                onSubmitted: onSubmitted, // used most on flutter web with enter button
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'exemple@gmail.com',
                  border: OutlineInputBorder(),
                  errorText: null,
                ),
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 85, 162, 88),
                ),
              ),
              ElevatedButton(onPressed: login, child: const Text('Login'),),
            ],
          ),
        ),
      ),
    );
  }

  void login(){
    String text = emailController.text;
    print(text);
  }

  void onChanged(String text){
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
    );
    if (emailRegex.hasMatch(text)){
      print("ok");
    }
    else {
      print("not ok");
    }
  }

  void onSubmitted(String text) {
    print(text + ' botao');
  }
}

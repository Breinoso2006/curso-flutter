// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;
  String mensagem = 'Pode entrar, fique a vontade.';

  void increment() {
    if (contador < 5) {
      setState(() {
        contador++;
      });
    }
    if (contador == 5) {
      setState(() {
        mensagem = 'Desculpe, no momento estamos cheios.';
      });
    }
  }

  void decrement() {
    if (contador != 0) {
      setState(() {
        contador--;
        mensagem = 'Pode entrar, fique a vontade.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/sanji-kitchen.jpg',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Seja Bem-Vindo(a).\n$mensagem',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.black.withOpacity(0.5),
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(
              80,
            ),
            child: Text(
              contador.toString(),
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
              onPressed: decrement,
              style: TextButton.styleFrom(
                backgroundColor: contador == 0
                    ? Colors.white.withOpacity(
                        0.2,
                      )
                    : Colors.white,
                fixedSize: const Size(
                  80,
                  80,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                ),
                foregroundColor: Colors.black,
                overlayColor: Colors.red,
              ),
              child: Text(
                'Saiu',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              width: 32,
            ),
            TextButton(
              onPressed: increment,
              style: TextButton.styleFrom(
                backgroundColor: contador == 5
                    ? Colors.white.withOpacity(
                        0.2,
                      )
                    : Colors.white,
                fixedSize: const Size(
                  80,
                  80,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                ),
                foregroundColor: Colors.black,
                overlayColor: Colors.green,
              ),
              child: Text(
                'Entrou',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}

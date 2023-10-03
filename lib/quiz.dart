import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 112, 5, 131),
              Color.fromARGB(255, 8, 122, 140),
              Color.fromARGB(255, 53, 15, 220),
            ], begin: Alignment.centerRight, end: Alignment.topCenter),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}

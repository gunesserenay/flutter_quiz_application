import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/data/questions.dart';
import 'package:flutter_quiz_application/questions_screen.dart';
import 'package:flutter_quiz_application/result_screen.dart';
import 'package:flutter_quiz_application/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    var screenWidget = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : QuestionScreen(
            onSelectAnswer: chooseAnswer,
          );

    if (activeScreen == 'result-screen') {
      screenWidget = const ResultsScreen();
    }

    /*  Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget == const QuestionScreen();
    } */
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
          child: screenWidget,
        ),
      ),
    );
  }
}

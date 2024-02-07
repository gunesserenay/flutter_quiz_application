import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/answer_button.dart';
import 'package:flutter_quiz_application/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  @override
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            /*  ElevatedButton(
              onPressed: () {},
              child: const Text('answer 1'),
            ), */
            /* AnswerButton(answerText: 'answerText', onTap: () {}),
            AnswerButton(answerText: 'answerText', onTap: () {}),
            AnswerButton(answerText: 'answerText', onTap: () {}), */
            ...currentQuestion.answers.map((answer) => AnswerButton(
                  answerText: answer,
                  onTap: () {},
                )),
          ],
        ),
      ),
    );
  }
}

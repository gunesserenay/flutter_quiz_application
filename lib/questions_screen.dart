import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'question..',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          /*  ElevatedButton(
            onPressed: () {},
            child: const Text('answer 1'),
          ), */
          AnswerButton(answerText: 'answerText', onTap: () {}),
          AnswerButton(answerText: 'answerText', onTap: () {}),
          AnswerButton(answerText: 'answerText', onTap: () {}),
        ],
      ),
    );
  }
}

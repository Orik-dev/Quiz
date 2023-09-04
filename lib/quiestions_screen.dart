import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class QuiestionsScreen extends StatefulWidget {
  const QuiestionsScreen({super.key});

  @override
  State<QuiestionsScreen> createState() => _QuiestionsScreenState();
}

class _QuiestionsScreenState extends State<QuiestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers
              .map((answer) => AnswerButton(answerText: answer, onTap: () {})),
        ],
      ),
    );
  }
}

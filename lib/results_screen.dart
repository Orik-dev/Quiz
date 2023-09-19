import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chooseAnswers});

  final List<String> chooseAnswers;

  List<Map<String, Object>> getSummaryDara() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chooseAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chooseAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Вы ответили правильно на X из Y вопросов!'),
            const SizedBox(height: 30),
            const Text('List of answers and question...'),
            const SizedBox(height: 30),
            TextButton(
              onPressed: null,
              style:
                  TextButton.styleFrom(disabledBackgroundColor: Colors.white),
              child: const Text('Перезапустить Викторину!'),
            )
          ],
        ),
      ),
    );
  }
}

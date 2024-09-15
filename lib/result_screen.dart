import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/question_summary.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    super.key,
    required this.choosenAnswer,
    required this.onRestart
  });

  final List<String> choosenAnswer;


  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'question_indx': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswer[i],
      });
    }

    return summary;
  }

  final void Function() onRestart ;

  @override
  Widget build(BuildContext context) {
    final numberOfTotalQuestion = questions.length;
    final summaryData = getSummaryData();

    final correctAnswerSelected = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your answered $correctAnswerSelected out $numberOfTotalQuestion questions correctly ! ",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18.0, 
                fontWeight: FontWeight.bold, 
                color: Color.fromARGB(
                    221, 162, 162, 239), 
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              onPressed: onRestart,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz ',
                  style: TextStyle(
                    fontSize: 18.0, 
                    fontWeight: FontWeight.bold, 
                  )),
            )
          ],
        ),
      ),
    );
  }
}

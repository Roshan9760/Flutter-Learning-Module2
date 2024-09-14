import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
              
              Text(((data['question_indx'] as int) +1).toString()),
              Column(
                children: [
                  Text((data['question'] as String)),
                  SizedBox(height: 5,),
                  Text((data['user_answer'] as String)),
                  Text((data['correct_answer'] as String))
                ],
              )
          ],
        );
      }).toList(),
    );
  }
}

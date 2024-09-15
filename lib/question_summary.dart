import 'package:flutter/material.dart';
import 'package:quizapp/text_button_style.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Container(
              margin: const EdgeInsets.symmetric(
                  vertical: 10.0, horizontal: 20.0), 

              child: Row(
                crossAxisAlignment:
                    CrossAxisAlignment.start, 
                children: [
                  Container(
                      margin: const EdgeInsets.only(
                          right: 10), 
                      child: TextButtonStyle(data)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text((data['question'] as String),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold, 
                              fontSize:
                                  16.0, 
                              color:
                                  Colors.white, 
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          (data['user_answer'] as String),
                          style: const TextStyle(
                            color:
                                Colors.blueAccent, 
                          ),
                        ),
                        Text(
                          (data['correct_answer'] as String),
                          style: const TextStyle(
                            color: Colors
                                .greenAccent, 
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {

  var currentQuestion  = questions[0];
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Text(
              currentQuestion.text,
              style:const TextStyle(
                color: Colors.white,
                ),
                textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentQuestion.getShuffledAnswerList().map((answer){
                return AnswerButton(answerText: answer, onTap: (){});
            }),
          ],
        ),
      ),
    );
  }
}

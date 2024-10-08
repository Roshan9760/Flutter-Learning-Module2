import 'package:flutter/material.dart';

class Start_Screen extends StatelessWidget {
  Start_Screen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(160, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Learn Flutter in a Fun Way !",
            style: TextStyle(
                color: Color.fromARGB(255, 237, 223, 252), fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon:const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}

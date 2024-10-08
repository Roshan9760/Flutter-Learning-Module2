import 'package:flutter/material.dart';
import 'package:quizapp/question_screen.dart';
import 'package:quizapp/start_screen.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/result_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswer = [];

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        // selectedAnswer = [];
        activeScreen = 'result-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'Question-screen';
    });
  }

  void onRestart(){
    setState(() {
      activeScreen = 'Question-screen';
      selectedAnswer = [];
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = Start_Screen(switchScreen);

    if (activeScreen == 'Question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen
      (
        choosenAnswer: selectedAnswer,
        onRestart: onRestart ,
      );
    }
    return MaterialApp(
      home: Scaffold(
        // Corrected the widget name from 'cScaffold' to 'Scaffold'

        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: screenWidget,
        ),
      ),
    );
  }
}

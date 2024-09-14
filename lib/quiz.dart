import 'package:flutter/material.dart';
import 'package:quizapp/question_screen.dart';
import 'package:quizapp/start_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  
  Widget? activeScreen ;

  @override
  void initState() {
    activeScreen = Start_Screen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        // Corrected the widget name from 'cScaffold' to 'Scaffold'
        appBar: AppBar(
          title: const Text('Welcome To Quiz App'),
        ),
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
          child: activeScreen,
        ),
      ),
    );
  }
}

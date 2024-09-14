import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Your Next Question .......'),
          SizedBox(
            height: 20,
            ),
          ElevatedButton(
            onPressed: (){}, 
            child: Text('Answer 1')
            )
        ],
      ),
    );
  }
}

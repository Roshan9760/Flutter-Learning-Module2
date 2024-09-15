import 'package:flutter/material.dart';

class TextButtonStyle extends StatelessWidget {
  TextButtonStyle(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
     Color boxColor = Colors.purple;

    if (data['user_answer'] == data['correct_answer']) {
      boxColor = Colors.lightBlue;
    }

    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: boxColor, 
        shape: BoxShape.circle, 
      ),
      alignment: Alignment.center, 
      child: Text(
        ((data['question_indx'] as int) + 1).toString(),
        style:const TextStyle(
           color: Colors.white,
          fontSize: 10.0, 
          fontWeight: FontWeight.bold, 
        ),
      ),
    );
  }
}

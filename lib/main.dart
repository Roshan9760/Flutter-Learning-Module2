import 'package:flutter/material.dart';
import 'package:quizapp/start_screen.dart';

void quizHandler(){

}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      // Corrected the widget name from 'cScaffold' to 'Scaffold'
      appBar: AppBar(
        title:  Text('Welcome To Quiz App'),
      ),
      body: Container(
        color: Colors.deepPurple,
        child:Start_Screen(),
      ),
    ),
  ));
}

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key,required this.choosenAnswer});

  final List<String> choosenAnswer;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Your answered X out Y questions correctly ! "),
            const SizedBox(
              height: 20,
            ),
            const Text('List of ans and question '),
            const SizedBox(
              height: 20,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz !'))
          ],
        ),
      ),
    );
  }
}

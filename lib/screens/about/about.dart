import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About'), backgroundColor: Colors.blue),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Text('This is a Quiz App for Students to brush up their Skills through small Quizzes.\n\n Hope you have fun while attending the quizzes.'),
        ),
      ),
    );
  }
}
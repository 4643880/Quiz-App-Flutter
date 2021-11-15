import 'package:flutter/material.dart';
import 'package:flutter_learning_with_angela/pages/quizpage.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: const Center(child: Text('Quiz App')),
          backgroundColor: Colors.amber,
        ),
        body: const QuizAppPage(),
      ),
    );
  }
}
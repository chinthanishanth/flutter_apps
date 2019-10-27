import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what\'s is your favourite food?',
        'answers': ['Red', 'White', 'Blue', 'Green']
      },
      {
        'questionText': 'what\'s is your favorite city?',
        'answers': ['Mumbai', 'Banglore', 'Chennai', 'Hyderabad', 'Pune']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Quizz App')),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            Answers(_answerQuestion),
            Answers(_answerQuestion),
            Answers(_answerQuestion),
          ],
        ),
      ),
    );
  }
}

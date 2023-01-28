import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home.dart';
import 'package:quiz_app/screens/questions.dart';


void main() {

  List<String> options = [ 'Blue' , 'Purple' , 'Green' ];
  String question = 'What is the colour of unoxidized blood?';
  String correct = 'Red';

  runApp(MaterialApp(
    routes: {
      '/': (context) => QuestionsPageMultiple(options: options, question: question, correct: correct),
    }
    ));
}

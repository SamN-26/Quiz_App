import 'package:flutter/material.dart';
import 'package:quiz_app/screens/QuestionsBuilder.dart';
import 'package:quiz_app/screens/home.dart';
import 'package:quiz_app/screens/questions.dart';
import 'dart:math';
// import 'package:quiz_app/services/Options.dart';
import 'package:quiz_app/screens/loading.dart';
import 'package:quiz_app/screens/EndPage.dart';

void main() {

  runApp(MaterialApp(
    routes: {
      '/': (context) => Home(),
      '/loading': (context) => Loading(),
      '/questions' : (context) =>QuestionBuilder(0 , {}),
      '/endPage' : (context) => EndPage(),
      }
    ));
}

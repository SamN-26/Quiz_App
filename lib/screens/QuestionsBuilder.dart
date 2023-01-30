import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions.dart';
import 'package:quiz_app/services/User_Input.dart';
import 'package:quiz_app/services/customwidgets.dart';

class QuestionBuilder extends StatelessWidget {
    int index;
    Map data;
    QuestionBuilder(this.index , this.data);
  @override
  Widget build(BuildContext context) {

    print(this.index);
    Map data = this.data.isNotEmpty ? this.data : ModalRoute.of(context)!.settings.arguments as Map;
    List _data = data['data'];
    String question = _data[this.index]['question'];
    List<String> incorrect_answers = List<String>.from(_data[this.index]['incorrect_answers']);
    String correct_answer = _data[this.index]['correct_answer'];
    String type = _data[this.index]['type'];
    print(question);
    print(incorrect_answers);
    print(correct_answer);
    incorrect_answers.add(correct_answer);

    return QuestionsPageMultiple(question: question , incorrect_answers: incorrect_answers, correct_answer: correct_answer , index: index ,
            data: data, numberOfQuestions: data['numberOfQues'],type: type,);
  }
}
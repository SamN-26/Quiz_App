import 'package:flutter/material.dart';
import 'package:quiz_app/screens/QuestionsBuilder.dart';
import 'package:quiz_app/services/Options.dart';
import 'package:quiz_app/services/User_Input.dart';
import 'package:quiz_app/services/customwidgets.dart';
import 'package:quiz_app/screens/EndPage.dart';
import 'dart:math';

class QuestionsPageMultiple extends StatefulWidget {

  String question ;
  List<String> incorrect_answers;
  int choice = 0;
  String correct_answer;
  int index;
  Map data;
  int numberOfQuestions;

  @override

   QuestionsPageMultiple({ required this.question , required this.incorrect_answers , required this.correct_answer , required this.index , required this.data , required this.numberOfQuestions });

  State<QuestionsPageMultiple> createState() => _QuestionsPageMultipleState();
}

class _QuestionsPageMultipleState extends State<QuestionsPageMultiple> {

  @override
  Widget build(BuildContext context) {
    User_Input instance = widget.data['instance'];
    int indexChoice =-1;
    return Scaffold(
      appBar: customAppbar('Question ' + (widget.index+1).toString()),
      backgroundColor: Color(0xFF2C74B3),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 40, 50, 0),
        child:  SingleChildScrollView(
          child: Column(
                  children: [
                         Container(
                          child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: textWidget(widget.question),
                          ),
                          decoration: BoxDecoration(
                          border: Border.all(
                          color: Color(0xFF0A2647),
                          width: 3,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                    ),
                    SizedBox(height: 30,),
                    OptionsBuilder(options: widget.incorrect_answers , callback: (int index) => {indexChoice = index}),
                    elevevatedButtonCustom("Next", () {
                          if(widget.correct_answer == widget.incorrect_answers[indexChoice])
                              instance.answers.add(true);
                          else
                            instance.answers.add(false);
                            print(widget.index);
                            print(widget.numberOfQuestions);
                            if(widget.index < widget.numberOfQuestions-1){
                            Navigator.of(context).pushReplacement(
                              new MaterialPageRoute(builder: (BuildContext context) => QuestionBuilder(widget.index+1 , widget.data)),
                            );}
                            else
                              Navigator.pushReplacementNamed(context, '/endPage' , arguments: {
                                'answers': instance.answers,
                              }
                                );
                    }),
                  ],
                ),
          scrollDirection: Axis.vertical,
        ),
        ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/services/User_Input.dart';
import 'package:quiz_app/services/customwidgets.dart';

class QuestionsPageMultiple extends StatefulWidget {

  int number = 0;
  String question ;
  List<String> options;
  int choice = 0;
  String correct;

  @override

   QuestionsPageMultiple({ required this.question , required this.options , required this.correct });

  State<QuestionsPageMultiple> createState() => _QuestionsPageMultipleState();
}

class _QuestionsPageMultipleState extends State<QuestionsPageMultiple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('Question ' + (widget.number+1).toString()),
      backgroundColor: Color(0xFF2C74B3),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
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
                Row(
                  children: [

                  ],
                )
              ],
            ),
      ),
    );
  }
}

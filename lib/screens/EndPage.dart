import 'package:flutter/material.dart';
import 'package:quiz_app/services/customwidgets.dart';

class EndPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Map answers = ModalRoute.of(context)!.settings.arguments as Map;
    List<bool> _answers = answers['answers'];
     int count=0;
    for(int i = 0 ; i<_answers.length; i++)
      {
        if(_answers[i] == true)
          count++;
      }

    return Scaffold(
        appBar: customAppbar("Your Score"),
        backgroundColor: Color(0xFF2C74B3),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                count.toString(),
                style: TextStyle(
                  color: Color(0xFF0A2647),
                  fontFamily: 'SecularOne',
                  fontSize: 50,
                ),
              ),
              elevevatedButtonCustom("Retake Quiz", (){
                Navigator.pushReplacementNamed(context, '/');
              }
              ),
            ],
          ),
        ),
    );
  }
}

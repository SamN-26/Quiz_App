import 'package:flutter/material.dart';
import 'package:quiz_app/services/customwidgets.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String? str;

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xFF2C74B3),
      appBar: customAppbar('Quiz App'),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 25, 50, 0),
        child:  Column(
          children: [
            textWidget("Number Of Questions"),
            TextField(
                keyboardType: TextInputType.number,
                controller: myController,
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 15,
                ),
              decoration: InputDecoration(
                filled: true  ,
                fillColor: Color(0xFF205295),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF0A2647),
                  ),
                  borderRadius: BorderRadius.circular(25),
                )
              ),
            ),
          SizedBox(height: 30,),
            category(),
            SizedBox(height: 30, ),
            difficulty(),
            SizedBox(height: 30,),
            type(),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context , '/loading', arguments:{
                    'numberOfQues' : myController.text,
                    'category' :
                  });
                  myController.dispose();
                },
                child: textWidget('Ok'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF205295),
                ),
            ),
          ],
        ),
      ),
    );
  }
}







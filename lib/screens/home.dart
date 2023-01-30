import 'package:flutter/material.dart';
import 'package:quiz_app/services/Drop_Menu.dart';
import 'package:quiz_app/services/customwidgets.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String? str;
  int? choice;
  
  @override
  Widget build(BuildContext context) {
    List<String> category = ['General Knowledge' , 'History' , 'Politics' , 'Sports' , 'Geography'];
    List<String> difficulty = ['Easy' , 'Medium' , 'Hard' ];
    List<String> type = ['Multiple Choice' , 'True/False'];
    int index_category , index_type , index_difficulty ;
    index_type = index_category = index_difficulty = 0;

    final myController = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xFF2C74B3),
      appBar: customAppbar('Quiz App'),
      body: SingleChildScrollView(
        child: Padding(
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
              Drop_Menu(category, 'Category', (int index) => {
                    index_category = index
              }),
              SizedBox(height: 30, ),
                Drop_Menu(difficulty, "Difficulty", (int index) => 
                {
                  index_difficulty = index
                }),
              SizedBox(height: 30,),
                Drop_Menu(type, "Type", (int index) =>{
                  index_type = index
                }),
              SizedBox(height: 30,),
              elevevatedButtonCustom("Ok",
                  () {
                    Navigator.pushNamed(context , '/loading', arguments:{
                      'numberOfQues' : myController.text,
                      'category' : category[index_category],
                      'difficulty': difficulty[index_difficulty],
                      'type' : type[index_type],
                    });
                    myController.dispose();
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}







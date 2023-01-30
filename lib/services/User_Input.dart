import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/QuestionsBuilder.dart';
import 'package:quiz_app/screens/questions.dart';

class User_Input{
  String category , type , difficulty , numberOfQues;
  List<bool> answers= [];

  User_Input( {required this.type , required this.category , required this.difficulty , required this.numberOfQues } );


  Future<void> getQues(BuildContext context , User_Input instance) async
  {
      if(this.type == "Multiple Choice")
          this.type = 'multiple';
      else
        this.type = 'boolean';
      String? category_local ;
      List<String> category = ['General Knowledge' , 'History' , 'Politics' , 'Sports' , 'Geography'];
      List<String> index = ['9' , '23' , '24' , '21' , '22' ];
      for(int i = 0 ; i<5 ; i++)
        {
            if(this.category == category[i]) {
              category_local = index[i];
              break;
            }
        }
      String url = 'https://opentdb.com/api.php?amount='+numberOfQues+'&category='+category_local.toString()+'&difficulty='+difficulty.toLowerCase()+'&type='+this.type;
      Response response = await get(Uri.parse(url));
      List data =  jsonDecode(response.body)['results'];
      int responseCheck = jsonDecode(response.body)['response_code'];
      //print(data);
       if( responseCheck == 0)
         Navigator.pushReplacementNamed(context, '/questions' , arguments: { 'data' : data , 'numberOfQues' : int.parse(this.numberOfQues) , 'instance' : instance});
       else
         print("Failed to Recieve Data");
  }
}
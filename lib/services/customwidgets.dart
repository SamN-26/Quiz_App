import 'package:flutter/material.dart';
import 'package:quiz_app/services/Drop_Menu.dart';

Widget type()
{
  List<String> type = ['Multiple Choice' , 'True/False'];
  return Drop_Menu(type, 'Type');
}

Widget difficulty()
{
  List<String> diff = ['Easy' , 'Medium' , 'Hard' ];
  return
    Drop_Menu(diff , 'Difficulty');
}

Widget category()
{
  List<String> category = ['General Knowledge' , 'History' , 'Politics' , 'Sports' , 'Geography'];
  //Drop_Menu Category = Drop_Menu(category , 'Category' );
  //print(Category.index);
  return Drop_Menu(category, 'Category');

}

Widget textWidget(String value)
{
  return Text(
    value,
    style: TextStyle(
      color: Color(0xFF0A2647),
      fontFamily: 'SecularOne',
      fontSize: 25,
    ),
  );
}


PreferredSizeWidget? customAppbar(String value)
{
  return AppBar(
    shape: Border(
        bottom: BorderSide(
          color: Color(0xFF0A2647),
          width: 2,
        )
    ),
    backgroundColor: Color(0xFF2C74B3),
    title: Center(
      child: Text(
        value,
        style: TextStyle(
          color: Color(0xFF0A2647),
          fontFamily: 'SecularOne',
        ),
      ),
    ),
    elevation: 0,
  );
}
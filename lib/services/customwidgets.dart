import 'package:flutter/material.dart';
import 'package:quiz_app/services/Drop_Menu.dart';

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

Widget elevevatedButtonCustom(String value , Function? function())
{
  return  ElevatedButton(
      onPressed: function ,
      child: textWidget(value),
      style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF205295),
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
    automaticallyImplyLeading: false,
  );
}
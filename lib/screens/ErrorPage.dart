import 'package:flutter/material.dart';
import 'package:quiz_app/services/customwidgets.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("Error"),
      backgroundColor: Color(0xFF2C74B3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "An Error Occured",
              style: TextStyle(
                color: Color(0xFF0A2647),
                fontFamily: 'SecularOne',
                fontSize: 50,
              ),
            ),
            elevevatedButtonCustom("Restart Quiz", (){
              Navigator.pushReplacementNamed(context, '/');
            }
            ),
          ],
        ),
      ),
    );;
  }
}

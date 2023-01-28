import 'package:flutter/material.dart';
import 'package:quiz_app/services/User_Input.dart';

class Loading extends StatefulWidget {



  User_Input instance = User_Input(type: type, category: category, difficulty: difficulty, numberOfQues: numberOfQues)

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

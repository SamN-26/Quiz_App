import 'package:flutter/material.dart';
import 'package:quiz_app/services/User_Input.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {

  @override
  State<Loading> createState() => _LoadingState();
}



class _LoadingState extends State<Loading> {
  Map data = {};

  void setUpQuiz(BuildContext context) async
  {
    User_Input instance = User_Input(type: data['type'], category:  data['category'] , difficulty: data['difficulty'], numberOfQues: data['numberOfQues']);
    instance.getQues(context , instance);
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    setUpQuiz(context);
    return Container(
        color: Color(0xFF2C74B3),
        child: SpinKitFoldingCube(
          color: Color(0xFF0A2647),
        ),
    );
  }
}

import 'dart:convert';
import 'package:http/http.dart';

class User_Input{
  String category , type , difficulty , numberOfQues;

  User_Input( {required this.type , required this.category , required this.difficulty , required this.numberOfQues } );


  Future<void> getQues() async
  {
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
      Map data =  jsonDecode(response.body);

  }
}
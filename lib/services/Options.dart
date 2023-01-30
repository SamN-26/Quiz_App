

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/services/customwidgets.dart';
import 'package:quiz_app/screens/ErrorPage.dart';


class OptionsBuilder extends StatefulWidget {

  List<String> options;
  String? chosen;
  String type;
  var callback;
  OptionsBuilder({ required this.options , required this.callback , required this.type});

  @override
  State<OptionsBuilder> createState() => _OptionsBuilderState();
}

class _OptionsBuilderState extends State<OptionsBuilder> {
  @override
  Widget build(BuildContext context) {
    if(widget.type == 'multiple') {
      return Column(
        children: [
          _optionsBuilder(widget.options[0]),
          SizedBox(
            height: 20,
          ),
          _optionsBuilder(widget.options[1]),
          SizedBox(height: 20,),
          _optionsBuilder(widget.options[2]),
          SizedBox(height: 20,),
          _optionsBuilder(widget.options[3]),
          SizedBox(height: 30,),

        ],
      );
    }
    else if(widget.type == 'boolean')
    {
      return Column(
        children: [
          _optionsBuilder(widget.options[0]),
          SizedBox(
            height: 20,
          ),
          _optionsBuilder(widget.options[1]),
          SizedBox(height: 20,),
        ],
      );
    }
    else
      return ErrorPage();
  }

  Widget _optionsBuilder(String option) {
    return Container(
      child: Row(
        children: [
          Radio(
              value: option,
              groupValue: widget.chosen,
              onChanged: (String? value)
              {
                  setState(() {
                    widget.chosen = value;
                  });
                  int index = -1 ;
                  for(int i =0 ; i<widget.options.length; i++)
                    {
                      if(widget.options[i] == value)
                        {
                          index = i;
                          break;
                        }
                    }
                  //print(index);
                  if(index == -1)
                    print("not found");
                  else
                    widget.callback(index);
              }
          ),
          Expanded(child: textWidget(option)),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF0A2647),
          width: 3,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}

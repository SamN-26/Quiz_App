

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/services/customwidgets.dart';


class OptionsBuilder extends StatefulWidget {

  List<String> options;
  String? chosen;

  OptionsBuilder({ required this.options});

  @override
  State<OptionsBuilder> createState() => _OptionsBuilderState();
}

class _OptionsBuilderState extends State<OptionsBuilder> {
  @override
  Widget build(BuildContext context) {
    print(widget.options);
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
              }
          ),
          textWidget(option),
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

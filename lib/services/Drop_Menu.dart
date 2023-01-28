import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:quiz_app/services/customwidgets.dart';

class Drop_Menu extends StatefulWidget {

  List<String> list;
  String value;
  int index = 0;

  Drop_Menu( this.list , this.value );

  @override
  State<Drop_Menu> createState() => _Drop_MenuState();
}

class _Drop_MenuState extends State<Drop_Menu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        elevatedButtonWidget(widget.value, context),
        textWidget(widget.list[widget.index]),
      ],
    );
  }

  Widget picker() {
    return SizedBox(
      height: 100,
      child: CupertinoPicker(
        looping: true,
        itemExtent: 50,
        children:
        widget.list.map((item) =>
            Center(
              child: Text(item,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ))
            .toList(),
        onSelectedItemChanged: (index) {
          setState(() {
            widget.index = index;
          });
        },
      ),
    );
  }

  Widget elevatedButtonWidget(String value, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showCupertinoModalPopup(context: context,
            builder: (context) =>
                CupertinoActionSheet(
                  actions: [
                    picker(),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: Text('Cancel',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ));
      },
      child: textWidget(value),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF205295),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )
      ),
    );
  }
}




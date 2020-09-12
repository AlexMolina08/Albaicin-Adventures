import 'package:flutter/material.dart';

class ChooseButton extends StatelessWidget {
  String text;
  Color color;
  ChooseButton(this.text , this.color);

  @override
  Widget build(BuildContext context) {
    return FlatButton(

      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: Center(
          child: Text(
              text ,
              style : TextStyle(
                fontSize: 15,
                color: Colors.white70,
                fontFamily: 'MeriendaOne'
             ),
          ),
        ),
      ),
    );
  }
}

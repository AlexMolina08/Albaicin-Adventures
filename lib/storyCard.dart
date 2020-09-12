import 'package:flutter/material.dart';


class StoryCard extends StatelessWidget {
  String question;

  StoryCard(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xDD607d8b),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        question,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
          fontFamily: 'MeriendaOne'
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';


class StoryCard extends StatelessWidget {
  String question;

  StoryCard(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xCE78909c),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        question,
        style: TextStyle(
          color: Colors.white70,
          fontFamily: 'MeriendaOne'
        ),
      ),
    );
  }
}

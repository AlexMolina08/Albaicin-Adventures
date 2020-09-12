import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:albaicin_adventure/storyCard.dart';

void main(){
     runApp(
       MaterialApp(
         title: 'Albaicin Adventures',
         home: GamePage()
       )
     );
}


class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.jpg'),
          fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child:Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Center(
                    child: StoryCard('fapuioshfasjikdnfjikasnfopasidnfpiasnfdaspjikndfask')
                  ),
                ),
              )
            ],
          )
        )
      ),
    );
  }
}

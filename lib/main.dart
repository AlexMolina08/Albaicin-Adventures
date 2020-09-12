import 'package:albaicin_adventure/choose_button.dart';
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
          child:Column(
            children: [
              //Texto de la historia
              Expanded(
                flex: 10,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Center(
                    child: StoryCard('fapuioshfasjikdnfjikasnfopasidnfpiasnfdaspjikndfaskfapuioshfasjikdnfjikasnfopasidnfpiasnfdaspjikndfask')
                  ),
                ),
              ),
              //BOTON 1
              Expanded(
                flex: 1,
                child: Container(child: ChooseButton('ir a la derecha' , Color(0xDD16d4c41)))
              ),
              SizedBox(height: 10.0,),
              Expanded(
                  child: ChooseButton('ir a la izquierda' , Color(0xDD607d8b))
              )
            ],
          )
        )
      ),
    );
  }
}

import 'package:albaicin_adventure/story/story.dart';

class GameService {
  int _currentIndx ; //para trackear lo que stá viendo el usuario
  List<Story> _storyPlan = [
    Story('Bienvenvenido! acabas de llegar a Granada y estás en el Arco de Elvira. A tu '
        'derecha tienes una cuesta que la llaman "Alhacaba" y al otro el arco',
        'cruzar el arco',
        'subir la cuesta')
  ];

  GameService() {
    _currentIndx = 0;
  }


  String getStoryText() => _storyPlan[_currentIndx].getText();
  String getChoice1() => _storyPlan[_currentIndx].getChoice1();
  String getChoice2() => _storyPlan[_currentIndx].getChoice2();

}
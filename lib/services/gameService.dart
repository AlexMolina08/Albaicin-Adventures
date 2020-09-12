import 'package:albaicin_adventure/story/story.dart';

class GameService {
  int _currentIndx ; //para trackear lo que stá viendo el usuario
  List<Story> _storyPlan = [
    /*0*/Story('Bienvenvenido! acabas de llegar a Granada y estás en el Arco de Elvira. A tu '
        'derecha tienes una cuesta que la llaman "Alhacaba" y al otro el arco',

        'cruzar el arco',
        'subir la cuesta'),
    /*1*/Story('Cruzas el arco de Elvira , quedas fascinado y le haces una foto.\n\nMientras la '
        'estás subiendo a instagram , escuchas una moto por detrás. ¡ Antes de que te des cuenta'
        ' el conductor te quita el móvil de las manos y sube la cuesta Alhacaba a toda velocidad !',

        ' Pasar del tema ',
        '¡ Perseguir al gitano por la cuesta !',
        ),
    /*2*/Story('Llevas 10 minutos subiendo esta maldita cuesta y por fin llegas a una plaza.\n'
        '"Plaza Larga" pone en un pequeño letrero de la calle.\n'
        'Hay mucha actividad en la plaza : bares , niños jugando , y unos cuantos mendigos gritando.\n'
        'Te sientas en un banco para disfrutar del ambiente , a lo que llega un señor mayor que se hace llamar "El chariko."\n\n'
        'Dice que te ofrece un poco de magia por 5 euros (?) ',

        'aceptar',
        'rechazar'),
    /*3*/Story('Pues nada, te han robado el móvil y llevas menos de 10 minutos en esta ciudad...\n'
        'Intentas tranquilizarte y sigues andando mas allá del arco.\n Te encuentras una tetería.',
        'Entrar',
        'Seguir andando'),
    /*4*/Story('"Se suele decir que granada es la ciudad de la magia , así que venga , porqué no"\n'
        'Coges de la cartera un billete de 5 y se lo das al Chariko. Este te mira a los ojos durante '
        'unos segundos mientras se saca un pequeño papel de plata\n"No te arrepentirás" contesta\n....\n'
        'Efectivamente el chariko tenia razon! esa magia te sienta genial , aunque estás un poco mareado\n'
        '\nA lo lejos ves a un hombre en una moto que te está mirando desafiante',

        'acercarse al gitano',
        'seguir tomando magia'),
    /*5(FIN1)*/Story('Te sientas , pides una cachimba y te tranquilizas después de lo sucedido.\n'
        'No ha sido la mejor experiencia del mundo , pero al menos sigues vivo',

        'EMPEZAR DE NUEVO',
        'EMPEZAR DE NUEVO'),
    /*6(FIN3)*/Story('Le dices educadamente que no. El Chariko soríe y te mira a los ojos durante unos segundos.\n\n'
        '"Tu te lo pierdes" te susurra.\n\nTe quedas un tanto extrañado, pero olvidas el tema y te pones'
        ' a escuchar música mientras ves a la gente pasar',
        'VOLVER A EMPEZAR',
        'VOLVER A EMPEZAR'),
    /*7*/Story('En menos de lo que canta un gallo , un'
        ' gitano se te acerca a toda velocidad y te mete una puñalá mientras te grita en un dialecto'
        ' que no llegas a comprender en su totalidad.\n\nEn fin, eso te pasa por ir por el Albaicin sin saber :(',
        'VOLVER A EMPEZAR',
        'VOLVER A EMPEZAR'),
    /*8(FIN4)*/Story('"Nah , ¿para que me voy a acercar , estoy demasiado embrujado ahora mismo para pelear"'
        ' pensaste mientras te prendías otra varita mágica.',
        'VOLVER A EMPEZAR',
        'VOLVER A EMPEZAR'),
  ];

  GameService() {
    _currentIndx = 0;
  }

  void nextStory({int bottonNUmber}){
    if(bottonNUmber == 1){

      switch(_currentIndx){

        case 0 : _currentIndx = 1;
        break;
        case 1 : _currentIndx = 3;
        break;
        case 2 :  _currentIndx = 4;
        break;
        case 3 : _currentIndx = 5;
        break;
        case 4: _currentIndx = 7;
        break;
        //si es 5 , 6 , 7 ,8 vuelve al principio
        default: _currentIndx = 0;

      }

    }else{
      switch(_currentIndx){

        case 0 : _currentIndx = 2;
        break;
        case 1 : _currentIndx = 2;
        break;
        case 2 :  _currentIndx = 6;
        break;
        case 3 : _currentIndx = 7;
        break;
        case 4: _currentIndx = 8;
        break;
        //si es 5 , 6 , 7 ,8 vuelve al principio
        default: _currentIndx = 0;

      }
    }
  }


  String getStoryText() => _storyPlan[_currentIndx].getText();
  String getChoice1() => _storyPlan[_currentIndx].getChoice1();
  String getChoice2() => _storyPlan[_currentIndx].getChoice2();

}
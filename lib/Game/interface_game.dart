//https://dart.dev/guides/language/language-tour#implicit-interfaces
import 'dart:math';

import 'package:drinkathon/Const/media_app.dart';
import 'package:emoji_alert/arrays.dart';
import 'package:emoji_alert/emoji_alert.dart';
import 'package:flutter/material.dart';
import '../Components/Texts/arrow_text_app.dart';
import '../Components/Texts/game_text_app.dart';
import '../Const/const.dart';

class IGame extends StatefulWidget {
  IGame(this.list, [this.isMeme = false]);
  final List list;
  bool isMeme;
  @override
  State<IGame> createState() => _IGame(this.list);
}

class _IGame extends State<IGame> with TickerProviderStateMixin {
  int index = 0;
  String message = "test";
  int nbrTour = 0;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  );
  @override
  void initState() {
    super.initState();
    repeatOnce();
  }

  void repeatOnce() async {
    await _controller.forward();
  }
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOutBack,
  );
  _IGame(this.list);
  late List list;
  @override
  Widget build(BuildContext context) {

    var listGame =  List.from(list);
    var nbTourMax = 30;
    Random random = new Random();
    index = random.nextInt(listGame.length);
    message = listGame[index];
    listGame.removeAt(index);
    return Center(
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(()  {
                nbrTour++;
                Random random = new Random();
                index = random.nextInt(listGame.length);
                message = listGame[index];
                print("===============================");
                print(message);
                _controller.reset();
                _controller.forward();
                if(message == ""){
                  print("oui");
                  widget.isMeme = true;
                }
                else {
                  widget.isMeme = false;
                  print("non");
                }
                listGame.removeAt(index);
                if(listGame.isEmpty || nbrTour == nbTourMax){
                  EmojiAlert(
                    alertTitle:  Text("Fin de la partie", style:  TextStyle(fontWeight:  FontWeight.bold)),
                    description:  Column(
                      children: [
                        Text("Je ne sais pas quoi ecrire... Felicitations???", textAlign: TextAlign.center),
                      ],
                    ),
                    enableMainButton:  true,
                    mainButtonColor:  Colors.red,
                    mainButtonText: Text("Retour au Menu"),
                    onMainButtonPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    cancelable:  false,
                    emojiType:  EMOJI_TYPE.JOYFUL,
                    height:  300,
                  ).displayAlert(context);
                }
              });
            },
            child: RotatedBox(
              quarterTurns: -1,
              child: Container(
                padding: EdgeInsets.only(
                    left: MeasurementApp.heightOf15Percent(),
                    right: MeasurementApp.heightOf15Percent()),
                alignment: Alignment.center,
                width: MeasurementApp.height(),
                height: MeasurementApp.width(),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          ConstApp.gradientStart,
                          ConstApp.gradientEnd
                        ])),
                child: ScaleTransition(
                  scale: _animation,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: !widget.isMeme ? GameTextApp(message) : Image.asset("lib/assets/${index}.jpg"),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: RotatedBox(
              quarterTurns: -1,
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: ArrowTextApp('<'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

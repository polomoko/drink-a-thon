import 'package:drinkathon/Const/const.dart';
import 'package:flutter/cupertino.dart';


class GameTextApp extends StatelessWidget{

  const GameTextApp(this.text, {Key? key}) : super(key: key);

  final String text;
  static const double fontTitle = 22;

  @override
  Widget build(BuildContext context) {
    return  DefaultTextStyle(style: TextStyle(color: ConstApp.white, fontSize: fontTitle, fontWeight: FontWeight.bold, height: 2, fontFamily: 'Graphik'), child: Text(text), textAlign: TextAlign.center,);
  }

}
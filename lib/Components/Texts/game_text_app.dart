import 'package:drinkathon/Const/const.dart';
import 'package:flutter/cupertino.dart';


class GameTextApp extends StatelessWidget{

  const GameTextApp(this.text, {Key? key}) : super(key: key);

  final String text;
  static const double fontTitle = 22;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(color: ConstApp.white, fontSize: fontTitle, fontWeight: FontWeight.bold, height: 2), textAlign: TextAlign.center,);
  }

}
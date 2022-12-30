import 'package:drinkathon/Const/const.dart';
import 'package:flutter/cupertino.dart';


class ArrowTextApp extends StatelessWidget{

  const ArrowTextApp(this.text, {Key? key}) : super(key: key);

  final String text;
  static const double fontTitle = 30;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(color: ConstApp.white, fontSize: fontTitle, fontWeight: FontWeight.bold, height: 2), textAlign: TextAlign.center,);
  }

}
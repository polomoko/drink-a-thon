import 'package:drinkathon/Const/const.dart';
import 'package:flutter/cupertino.dart';


class TitleTextApp extends StatelessWidget{

  const TitleTextApp(this.text, {Key? key}) : super(key: key);

  final String text;
  static const double fontTitle = 20;
  
  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(color: ConstApp.white, fontSize: fontTitle ));
  }
  
}
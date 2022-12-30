import 'package:drinkathon/Const/const.dart';
import 'package:flutter/cupertino.dart';


class TitleTextApp extends StatelessWidget{

  // ignore: use_key_in_widget_constructors
  const TitleTextApp(this.text,[this.color = ConstApp.white]);

  final String text;
  final Color color;
  static const double fontTitle = 20;
  
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: color, fontSize: fontTitle ));
  }
  
}
import 'package:flutter/cupertino.dart';

class MeasurementApp{

  static late BuildContext context;

  //set the context for using the other functions
  static set(BuildContext c) => context = c;

  static width()  => MediaQuery.of(context).size.width;
  static height() => MediaQuery.of(context).size.height;

  static titleMargin() => height() * 0.10;


  static widthOf75Percent() => _widthByPercent(0.75);
  static widthOf90Percent() => _widthByPercent(0.90);

  static heightOf15Percent() => _heightByPercent(0.15);

  static _heightByPercent(double d) => height() * d;
  static _widthByPercent(double d) => width() * d;




}
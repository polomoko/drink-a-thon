import 'package:drinkathon/Const/const.dart';
import 'package:drinkathon/Const/media_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Game/never_i_have_ever.dart';
import 'Texts/title_text_app.dart';

class GameButtonAppPainter extends CustomPainter {
  late Paint painter;
  late int scale;

  GameButtonAppPainter();

  @override
  void paint(Canvas canvas, Size size) {
    Path p = gameSquareButtonAppPath(size, canvas, 0.1);
    Path p2 = gameRectButtonAppPath(size, canvas);

    painter = Paint()
      ..color = ConstApp.white
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);
    canvas.drawPath(p2, painter);

    painter = Paint()
      ..color = ConstApp.yellow
      ..style = PaintingStyle.fill;
    canvas.drawPath(p, painter);

    painter = Paint()
      ..color = ConstApp.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(p, painter);

    painter = Paint()
      ..color = ConstApp.white
      ..style = PaintingStyle.fill;
    canvas.drawPath(p2, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  gameRectButtonAppPath(Size size, Canvas canvas) {
    Path p = Path();
    var vertexWidthStart = 0.04;
    var ratioVertexWidthEnd = 1 - vertexWidthStart;
    var vertexHeightStart = 0.3;
    var ratioVertexHeightEnd = 1 - vertexHeightStart;

    p.moveTo(size.height, size.height * .8);
    p.lineTo(size.width * ratioVertexWidthEnd, size.height * .8);
    p.quadraticBezierTo(size.width, size.height * .8, size.width,
        size.height * ratioVertexHeightEnd);
    p.lineTo(size.width, size.height * .3);
    p.quadraticBezierTo(size.width, size.height * .2,
        size.width * ratioVertexWidthEnd, size.height * .2);
    p.lineTo(size.height, size.height * .2);

    p.close();
    return p;
  }

  gameSquareButtonAppPath(Size size, Canvas canvas, double radius) {
    Path p = Path();
    var ratioVertexStart = radius;
    var ratioVertexEnd = 1 - ratioVertexStart;
    p.moveTo(0, size.height * ratioVertexStart);
    p.lineTo(0, size.height * ratioVertexEnd);
    p.quadraticBezierTo(
        0, size.height, size.height * ratioVertexStart, size.height);
    p.lineTo(size.height * ratioVertexEnd, size.height);
    p.quadraticBezierTo(
        size.height, size.height, size.height, size.height * ratioVertexEnd);
    p.lineTo(size.height, size.height * ratioVertexStart);
    p.quadraticBezierTo(size.height, 0, size.height * ratioVertexEnd, 0);
    p.lineTo(size.height * ratioVertexStart, 0);
    p.quadraticBezierTo(0, 0, 0, size.height * ratioVertexStart);

    p.close();
    return p;
  }
}

class GameButtonApp extends StatelessWidget {

  GameButtonApp(this.icon, this.text, this.widget,{Key? key}) : super(key: key);

  static double thisTopPadding = 10;
  late Icon icon;
  late String text;
  late StatelessWidget widget;

  @override
  Widget build(BuildContext context) {
    double componentWidth = MeasurementApp.width()*0.8,
        componentHeight = MeasurementApp.height()*0.08,
        marginComponent = MeasurementApp.width()*0.1;

    return Column(children: [
      SizedBox(height: MeasurementApp.height() * 0.05),
      GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget),
          );
        },
        child: Stack(
          children: [
            Align(
              child: CustomPaint(
                size: Size(componentWidth, componentHeight),
                painter: GameButtonAppPainter(),
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Container(
                child: icon,
                width: componentHeight,
                height: componentHeight,
                margin: EdgeInsets.only(left: marginComponent),
                alignment: Alignment.center,
              ),
              alignment: Alignment.centerLeft,
            ),
            Align(
              child: Container(
                child: TitleTextApp(text, ConstApp.black),
                height: componentHeight,
                width: componentWidth - componentHeight,
                margin: EdgeInsets.only(right: marginComponent),
                alignment: Alignment.center,
              ),
              alignment: Alignment.centerRight,
            )
          ],
          // alignment: Alignment.center,
        ),
      )
    ]);
  }
}

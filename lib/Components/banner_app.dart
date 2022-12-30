import 'package:drinkathon/Const/media_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Const/const.dart';
import 'Texts/title_text_app.dart';


class BannerPainter extends CustomPainter {
  late Paint painter;
  late int scale;

  BannerPainter();

  BannerPainter.s(this.scale);

  @override
  void paint(Canvas canvas, Size size) {
    Path p = bannerPath(size, canvas);

    painter = Paint()
      ..color = ConstApp.yellow
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 30);
    canvas.drawPath(bannerPath(size, canvas), painter);

    painter = Paint()
      ..color = ConstApp.yellow
      ..style = PaintingStyle.fill;
    canvas.drawPath(p, painter);

    painter = Paint()
      ..color = ConstApp.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(p, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  Path bannerPath(size, canvas) {
    Path p = Path();
    p.moveTo(0, size.height / 2);
    p.lineTo(size.width * 0.15, 0);
    p.lineTo(size.width * 0.85, 0);
    p.lineTo(size.width, size.height / 2);
    p.lineTo(size.width * 0.85, size.height);
    p.lineTo(size.width * 0.15, size.height);
    p.close();
    return p;
  }

  //todo remove never use
  Path bannerGlow(Size size, Canvas canvas) {
    Path p = Path();
    p.moveTo(0 - size.width * 0.10, size.height / 2);
    p.lineTo(size.width * 0.15, 0 - size.height * .10);
    p.lineTo(size.width * 0.85, 00 - size.height * .10);
    p.lineTo(size.width + size.width * 0.05, size.height / 2);
    p.lineTo(size.width * 0.85, size.height + size.height * 0.10);
    p.lineTo(size.width * 0.15, size.height + size.height * 0.10);
    p.close();
    return p;
  }
}

class BannerApp extends StatelessWidget {
  const BannerApp({Key? key}) : super(key: key);
  static const double heightBanner = 60;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: MeasurementApp.titleMargin()),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: Size(MeasurementApp.widthOf75Percent(), heightBanner),
              painter: BannerPainter(),
            ),
            const TitleTextApp("Drinkathon")
          ],
        ));

  }
}

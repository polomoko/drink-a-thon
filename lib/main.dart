import 'package:drinkathon/Components/game_button_app.dart';
import 'package:drinkathon/Const/const.dart';
import 'package:drinkathon/Const/media_app.dart';
import 'package:drinkathon/Game/dare.dart';
import 'package:drinkathon/Game/melimelo.dart';
import 'package:drinkathon/Game/meme.dart';
import 'package:drinkathon/Game/never_i_have_ever.dart';
import 'package:drinkathon/Game/truth.dart';
import 'package:drinkathon/Game/you_prefer.dart';

import 'Components/banner_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// list utilisateurs (Nom - sex)
// Superutilisateurs "coquinous"(target0)

// Jeu de meme (Une image sur le telephone, celui qui a le telephone est le juge les autres trouve la legende la plus drole)

// Verite
// actions
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    MeasurementApp.set(context);
    var iconSize = MeasurementApp.width() / 8;
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [ConstApp.gradientStart, ConstApp.gradientEnd])),
            child: Column(children: [
              BannerApp(),
              GameButtonApp(
                  Icon(
                    Icons.abc,
                    color: ConstApp.black,
                    size: iconSize,
                  ),
                  "Never i Have Ever",
                  NeverIHaveEver()),
              GameButtonApp(
                  Icon(
                    Icons.warning,
                    color: ConstApp.black,
                    size: iconSize,
                  ),
                  "Dare",
                  Dare()),
              GameButtonApp(
                  Icon(Icons.support_agent,
                      color: ConstApp.black, size: iconSize),
                  "truth",
                  Truth()),
              GameButtonApp(
                  Icon(
                    Icons.image,
                    color: ConstApp.black,
                    size: iconSize,
                  ),
                  "Meme",
                  Meme()),
              GameButtonApp(
                  Icon(
                    Icons.games,
                    color: ConstApp.black,
                    size: iconSize,
                  ),
                  "Melimelo",
                  Melimelo()),
              GameButtonApp(
                  Icon(
                    Icons.drafts,
                    color: ConstApp.black,
                    size: iconSize,
                  ),
                  "Tu preferes",
                  YouPrefer())
            ]),
            width: MeasurementApp.width()),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}

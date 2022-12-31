import 'dart:math';

import 'package:drinkathon/Game/interface_game.dart';
import 'package:flutter/material.dart';

class Meme extends StatelessWidget {
  const Meme({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var list = List<String>.generate(198, (i) => "");
    return IGame(list, true);
  }

}


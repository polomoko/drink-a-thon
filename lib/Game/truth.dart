import 'dart:math';

import 'package:drinkathon/Game/interface_game.dart';
import 'package:flutter/material.dart';

var list = [
  'Quel est le plus gros mensonge qu’on t’a dit pendant ton enfance ?',
  'Qui aimerais-tu épouser ?',
  'Est-ce que tu as eu un/e ami/e imaginaire pendant ton enfance ?',
  'Cite trois choses auxquelles tu penses lorsque tu es assis/e aux toilettes.',
  'Nomme ton/ta petit/e ami/e.',
  'Quelle est la dernière chose que tu as cherchée sur Google ?',
  'Est-ce que tu aimes chanter sous la douche ?',
  'As-tu déjà été amoureux/se ?',
  'Quelle superpouvoir as-tu déjà souhaité avoir ?',
  'Est-ce que tu as déjà demandé quelqu’un en mariage ?',
  'Dis nous ton secret le plus embarrassant.',
  'Qui est ta/ton meilleur/e ami/e ?',
  'Cite un/e de tes ami/es à qui tu voudrais offrir un dîner aux chandelles.',
  'Quel est le plus gros mensonge que tu as dit à quelqu’un ?',
  'Cite une de tes pires habitudes dont tu veux te débarrasser.',
  'Nomme la fille ou le garçon le / la plus mignon/ne de ta classe.',
  'Qui est-ce que tu aimes plus ? Maman ou Papa ?',
  'T’a-t-on déjà surpris à parler pendant ton sommeil ?',
  'Qui est la fille ou le garçon de tes rêves ?',
  'Nomme ta plus grande peur.',
  'As-tu déjà vu tes parents faire l’amour par accident ?',
  'Est-ce que tu t’es déjà curé le nez en public ?',
  'Nomme ton béguin actuel.',
  'Nomme ton amour d’enfance.',
  'As-tu déjà eu le béguin pour ton prof ?',
  'As-tu déjà embrassé ta photo ?',
  'As-tu déjà été surpris en train de marcher pendant ton sommeil ?',
  'As-tu déjà eu l’envie de tuer quelqu’un ?',
  'Nomme un personnage Disney que tu voudrais devenir.',
  'Mentionne ta taille de soutif.',
  'As-tu déjà essayé de flirter avec le petit ami/la petite amie de ta meilleure amie ?',
  'Nomme une célébrité que tu trouves la plus sexy.',
  'Quel est ton poids ?',
  'Si tu avais la chance d’épouser une célébrité, qui serait-il ou elle ?',
  'Décris la farce la plus drôle qu’on t’ait jamais faite.',
  'Est-ce que tu aimes lécher ton assiette après ton repas ?',
  'Est-ce que tu as déjà goûté de la nourriture pour chat ou pour chien ?',
  'Quel était ton surnom pendant ton enfance ?',
  'Quelle coupe de cheveux est-ce que tu as toujours voulu avoir ?',
  'Nomme l’animal qui te ressemble le plus.',
  'Quelle est la position professionnelle dont tu rêves ?',
  'Quelle est la première chose que tu remarques chez une fille ou un garçon ?',
  'Qu’est-ce que tu préfères ? Le thé ou le café ?',
  'Est-ce que tu te trouves sexy ?',
  'Est-ce que tu as déjà pleuré parce que quelqu’un te manquait ?',
  'Est-ce que tu as déjà demandé à quelqu’un de sortir dîner avec toi ?',
  'Quand est-ce que tu as pleuré pour la dernière fois, et pourquoi ?',
  'Est-ce que tu danses quand tu es seul(e) ?',
  'Cite une partie de ton corps que tu voudrais échanger avec ton/ta meilleur/e ami/e.',
  'Cite une chose que tu voudrais changer chez toi.',
  'Nomme le pire embrasseur présent dans cette pièce.',
  'De qui es-tu jaloux/se ?',
  'Mentionne ta tour de taille.',
  'Est-ce que tu as déjà souhaité changer de sexe ?',
  'Quel est le métier de tes rêves ?',
  'Quelle est la connaissance la plus inutile ?',
  'Nomme une personne dans la pièce dont tu es secrètement amoureux/se.',
  'Qu’est-ce qui est écrit sur la dernière page de ton journal intime ?',
  'Décris ta première impression de ton petit ami ou de ta petite amie.',
  'Est-ce que tu as déjà gardé intentionnellement un livre de bibliothèque ?'
];




class Truth extends StatelessWidget {
  const Truth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IGame(list);
  }

}


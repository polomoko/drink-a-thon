import 'dart:math';

import 'package:drinkathon/Game/interface_game.dart';
import 'package:flutter/material.dart';

// Je n'ai jamais
var list = [
'Fais ‘Coucou’ à un inconnu dans la rue.',
'Chante comme une chanteuse d’Opéra.',
'Cure toi le nez en public.',
'Sors et chante la Marseillaise à voix haute.',
'Imite ton personnage préféré de Disney.',
'Appelle ton béguin pour lui avouer ton amour.',
'Embrasse la semelle de la chaussure de ton ami/e.',
'Lèche le pneu avant d’un vélo.',
'Va en direct sur Facebook et raconte aux gens une blague idiote.',
'Mange un morceau de papier.',
'Mange une cuillerée d’un cornichon.',
'Fais un câlin à un arbre et embrasse ses feuilles.',
'Demande une tasse de café à ton voisin.',
'Essaie de faire le bruit d’un chien affamé.',
'Suce ton pouce pendant quinze minutes.',
'Appelle ta mère et raconte-lui à quel point tu adores fumer des cigarettes.',
'Laisse les gens te jeter des œufs au visage.',
'Appelle ton père et dis-lui que tu as un petit ami/une petite amie.',
'Pose comme un mannequin de Victoria Secret.',
'Parle à ta main pendant les dix prochaines minutes.',
'Fais 20 pompes.',
'Renifle les aisselles de la personne assise à votre droite.',
'Appelle un numéro au hasard et chante une berceuse à la personne qui répond.',
'Mange une cuillère de sucre.',
'Joue le reste du jeu en restant debout.',
'Porte ton soutif par dessus ton t-shirt pour le reste du jeu.',
'Imite ta mère.',
'Appelle une personne au hasard et souhaite-lui un “Joyeux anniversaire”.',
'Appelle ton coup de cœur et fais-lui une demande en mariage.',
'Appelle une pizzeria et commande une pizza pour tout le monde dans la pièce.',
'Appelle ton prof et avoue que tu as triché au dernier contrôle de classe.',
'Porte tes sous-vêtements sur ta tête pour le reste de la partie.',
'Prends un selfie marrante de toi-même et envoie-le à ta maman.',
'Fais un câlin chaleureux à la personne assise à ta droite.',
'Laisse tout le monde regarder l’historique de tes recherches sur ton portable.',
'Appelle ta mère en parlant avec une voix sexy.',
'Demande à la personne assise à ta droite de te tirer les joues.',
'Échange des sous-vêtements avec la personne assise à côté de toi.',
'Passe du fil dentaire entre les dents de la personne assise à ta gauche.',
'Commande une bague en ligne et offre-la à ta mère.',
'Sonne à la porte de tes voisins et enfuis-toi.',
'Fais un Moonwalk.',
'Rase-toi les aisselles.',
'Mords les ongles de tes pouces avec tes dents.',
'Flirte avec un type au hasard dans la rue.',
'Fais des bruits de pets marrants.',
'Embrasse n’importe quelle personne de ton groupe d’amis.',
'Dessine un tatouage sur ta main droite avec un marqueur permanent.',
'Prends une douche froide avec tes vêtements et joue le reste du jeu avec des vêtements mouillés.',
'Parle avec la voix d’un canard.',
'Mets une vidéo porno et regarder la.',
'Mange une poignée d’épices piquants.',
'Épile le dos de n’importe quelle personne.',
'Sens du poivre noir sans éternuer.',
'Joue le reste du jeu les yeux fermés.',
'Mélange du sucre et du poivre noir et mange ce mélange.',
'Frotte du chocolat sur ton nez et essaie de le lécher.',
'Publi un statut Facebook en utilisant seulement tes coudes.',
'Mets des glaçons dans tes chaussures et porte-les jusqu’à la fin du jeu.',
'Lèche ton coude.',
'Imite l’animal de compagnie de ta famille.',
'Bois dix verres d’eau d’un coup.',
'Achète une chemise en ligne et offre le à ton père.'
];
class Dare extends StatelessWidget {
  const Dare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IGame(list);
  }

}


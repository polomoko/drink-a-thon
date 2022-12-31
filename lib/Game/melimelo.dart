import 'dart:math';

import 'package:drinkathon/Game/interface_game.dart';
import 'package:flutter/material.dart';

// Je n'ai jamais
var listJeNaiJamais = [
  'Je n’ai jamais fait semblant d’être malade pour ne pas aller à l’école.',
  'Je n’ai jamais intimidé un(e) camarade de classe.',
  'Je n’ai jamais été choisi en dernier(e) pour un projet de groupe.',
  'Je n’ai jamais vomi lors d’une sortie d’école.',
  'Je n’ai jamais flirté avec un(e) prof.',
  'Je n’ai jamais été au bal.',
  'Je n’ai jamais juré sur un(e) camarade de classe.',
  'Je n’ai jamais volé quelque chose d’un(e) camarade de classe.',
  'Je n’ai jamais chanté dessous la douche.',
  'Je n’ai jamais regardé un film interdit aux moins de 18 ans.',
  'Je ne me suis jamais entrainer à embrasser en utilisant un oreiller.',
  'Je n’ai jamais joué au jeu de la bouteille.',
  'Je n’ai jamais rencontré quelqu’un de connue.',
  'Je n’ai jamais joué au poker.',
  'Je n’ai jamais chatté avec un(e) inconnue en ligne.',
  'Je n’ai jamais été en retard pour l’école.',
  'Je n’ai jamais pantalonné un gamin.',
  'Je n’ai jamais pété devant un(e) camerade de classe.',
  'Je n’ai jamais eu un boulot d’étudiant.',
  'Je n’ai jamais triché lors d’un examen.',
  'Je ne suis jamais tombé(e) du lit en dormant.',
  'Je n’ai jamais volé de l’argent du portefeuille à mon père.',
  'Je n’ai jamais été à l’hôpital.',
  'Je n’ai jamais appris à nager.',
  'Je n’ai jamais vu une étoile volante.',
  'Je n’ai jamais porté de chaussettes dépareillées.',
  'Je ne me suis jamais cassé(e) un os.',
  'Je n’ai jamais dormi dehors quand j’étais bourrée.',
  'Je n’ai jamais bu du whiskey comme de l’eau.',
  'Je n’ai jamais appelé quelqu’un complètement bourré(e).',
  'Je ne suis jamais rentré(e) à la mauvaise maison quand j’étais ivre.',
  'Je n’ai jamais pratiqué du sport en buvant de l’alcool.',
  'Je n’ai jamais pris l’alcool comme excuse pour quelque chose que j’ai dit.',
  'Je n’ai jamais été choquée parce que j’ai cru être enceinte.',
  'Je n’ai jamais bu dans les transports public.',
  'Je ne me suis jamais évanoui à cause de l’alcool.',
  'Je n’ai jamais changé l’ampoule électrique moi-même.',
  'Je ne suis jamais tombé(e) à cause de l’alcool.',
  'Je n’ai jamais joué de jeu d’alcool.',
  'Je n’ai jamais ouvert un bouteille en utilisant une autre bouteille.',
  'Je n’ai jamais bu seule.',
  'Je n’ai jamais bu pour gagner en confiance.',
  'Je n’ai jamais mangé d’huîtres.',
  'Je n’ai jamais bu une bière en moins de dix secondes et vomi après.',
  'Je n’ai jamais fait de body shot.',
  'Je n’ai jamais pris de bain de minuit.',
  'Je n’ai jamais voté dans une élection.',
  'Je n’ai jamais eu de bijou comme cadeau.',
  'Je n’ai jamais eu de proposition de mariage.',
  'Je n’ai jamais donné à manger à quelqu’un avec une cuillère.',
  'Je n’ai jamais envoyé de texto mignon',
  'Je n’ai jamais essayé le speed dating.',
  'Je n’ai jamais eu de fleur de la part de quelqu’un avec qui je sort.',
  'Je n’ai jamais passé de nuit avec quelqu’un à la plage.',
  'Je n’ai jamais été dans une voiture pendant super longtemps avec quelqu’un avec qui je sors.',
  'Je n’ai l’ai jamais fait dans un théâtre.',
  'Je n’ai jamais eu de dîner aux chandelles romantique.',
  'Je n’ai jamais essayé de voler les mots de passe de mon partenaire.',
  'Je n’ai jamais été amoureux(se) du partenaire de ma copine.',
  'Je n’ai jamais harcelé quelqu’un sur Instagram.',
  'Je n’ai jamais regretté d’être sorti(e) avec quelqu’un.',
  'Je n’ai jamais essayé de cacher un suçon.',
  'Je n’ai jamais parlé avec quelqu’un pendant toute la nuit.',
  'Je n’ai jamais été friendzoné',
  'Je n’ai jamais quitté quelqu’un par texto.',
  'Je n’ai jamais embrassé quelqu’un dans un ascenseur.',
  'Je n’ai jamais envoyé de selfie sexy à quelqu’un.',
  'Je ne me suis jamais curé(e) le nez.',
  'Je n’ai jamais cassé mon portable.',
  'Je ne suis jamais rentré(e) dans une cabine de toilette occupée.',
  'Je n’ai jamais été surpris(e) en train de faire une soirée dansante tout(e) seul(e) devant mon miroir.',
  'Je n’ai jamais mis des gâteaux sans aucune protection dans ma poche quand j’étais bourré(e) pour les donner à ma sœur ou mon frère plus tard.',
  'Je n’ai jamais laissé un message vocal bourré.',
  'Je n’ai jamais envoyé de texto à la mauvaise personne.',
  'Je n’ai jamais frappé un mur et le regretté après, puisque cela me faisait mal.',
  'Je n’ai jamais mangé de la nourriture de chien sans faire exprès.',
  'Je n’ai jamais surpris quelqu’un tout(e) nu(e).',
  'Je n’ai jamais été fière de roter l’alphabet.',
  'Je n’ai jamais rigolé si fort que je me suis fait pipi dessus.',
  'Je n’ai jamais fait un tirage de slip en public.',
  'Je ne me suis jamais habillé(e) comme le sexe opposé.',
  'Je n’ai jamais adapté ma façon d’être en fonction de qui était dans la pièce.',
  'Je n’ai jamais pété devant quelqu’un que je kiffe.',
  'Je n’ai jamais sauté dans une piscine avec mes vêtements.',
  'Je n’ai jamais essayé de l’alcool illégal fait maison.',
  'Je n’ai jamais essayé d’impressionner un béguin en faisant s’emblant d’être super intelligent(e).',
  'Je n’ai jamais envoyé un texto sale à la mauvaise personne.',
  'Je n’ai jamais voyagé en première classe.',
  'Je n’ai jamais mis du papier toilette autour d’une maison le jour d’Halloween.',
  'Je nai jamais conduit une voiture automatique.',
  'Je n’ai jamais utilisé une fausse carte d’identité.',
  'Je n’ai jamais été à un mariage de destination.',
  'Je n’ai jamais loupé un high five.',
  'Je n’ai jamais offert un cadeau reçu à quelqu’un d’autre.',
  'Je n’ai jamais passé 24h sans me laver.',
  'Je n’ai jamais renvoyé mon plat au restaurant.',
  'Je n’ai jamais sauvé la vie de quelqu’un d’autre.',
  'Je n’ai jamais menti à ma ou mon meilleur(e) ami(e) sur la personne avec qui je passais du temps.',
  'Je ne suis jamais allé(e) à Disneyland.',
  'Je n’ai jamais fait semblant de connaître un inconnu, parce que quelqu’un me suivait.',
  'Je n’ai jamais pas aimé quelque chose que j’ai cuisiné.',
  'Je n’ai jamais eu d’attaque de panique.',
  'Je n’ai jamais gouté du caviar.',
  'Je n’ai jamais utilisé le mot de passe Netflix de quelqu’un d’autre.',
  'Je ne me suis jamais endormi(e) pendant les cours.',
  'Je n’ai jamais été viré.',
  'Je n’ai jamais regardé toute une série en une soirée.',
  'Je n’ai jamais embrassé plus d’une personne en 24h.',
  'Je ne suis jamais resté(e) pour le déjeuner après un coup d’un soir.',
  'Je n’ai jamais eu à faire la marche de la honte.',
  'Je n’ai jamais dansé sur un bar.',
  'Je n’ai jamais été mis(e) à la porte d’un pub/club/bar.',
  'Je n’ai jamais rejoint le mile-high club avec un inconnu.',
  'Je ne me suis jamais endormi(e) en faisant l’amour.',
  'Je n’ai jamais fait de jeu de rôle au lit.',
  'Je n’ai jamais été dans un club de striptease.',
  'Je ne l’ai jamais fait sur le plan de travail de la cuisine.',
  'Je n’ai jamais couché avec des jumeaux(lles) identiques.',
  'Je n’ai jamais couché avec le ou la partenaire d’un(e) ami(e).',
  'Je n’ai jamais avalé à la première pipe.',
  'Je n’ai jamais menti sur “mon chiffre” à quelqu’un avec qui je sors.',
  'Je ne me suis jamais fait menotter.',
  'Je n’ai jamais menti pour protéger un(e) ami(e) qui trompe son partenaire.',
  'Je ne me suis jamais réveillé(e) parce que quelqu’un était en train de me sucer.',
  'Je n’ai jamais dû chercher mes vêtements en urgence, parce que quelqu’un était en train de frapper à la porte.',
  'Je ne suis jamais sorti(e) avec le grand frère de mon ami(e).',
  'Je n’ai jamais pris des photos de nus d’un(e) ami(e).',
  'Je n’ai jamais eu la gueule de bois au point de jurer de ne plus jamais boire.',
  'Je n’ai jamais embrassé quelqu’un en public.',
  'Je n’ai jamais eu d’embrouille d’amoureux en public.',
  'Je ne suis jamais sorti(e) du resto en douce au moment où il fallait payer l’addition.',
  'Je n’ai jamais gagné au loto.',
  'Je n’ai jamais eu à aller au tribunal.',
  'Je n’ai jamais fait le wedding crasher.',
  'Je n’ai jamais harcelé quelqu’un sur les réseaux sociaux.',
  'Je n’ai jamais grimpé par la fenêtre.',
  'Je n’ai jamais ris autant de me faire pipi dessus.',
  'Je n’ai jamais fumé de la marijuana.',
  'Je n’ai jamais eu de tatouage.',
  'Je n’ai jamais inventé un(e) faux(sse) petit(e) ami(e).',
  'Je n’ai jamais fait semblant d’être malade pour que les gens s’occupent de moi.',
  'Je n’ai jamais dépensé plus que 100 € sur un sac à main.',
  'Je n’ai jamais balancé une boisson sur quelqu’un.',
  'Je n’ai jamais porté les sous-vêtements d’une autre personne.',
  'Je n’ai jamais essayé la plongée sous-marine.',
  'Je ne me suis jamais fait arrêté pour avoir rejoint une manif.',
  'Je n’ai jamais fait la fête sans arrêt pendant plus de 24h.',
  'Je n’ai jamais eu d’ami(e) avec certains avantages en plus…',
  'Je ne suis jamais allé(e) au cinéma seul(e).',
  'Je n’ai jamais eu de fête surprise à mon honneur.',
  'Je n’ai jamais joué à un jeu vidéo qui fait peur ou regardé un film qui fait peur.',
  'Je n’ai jamais inventé de jeu de carte moi-même.',
  'Je n’ai jamais essayé d’appli de rencontre.',
  'Je n’ai jamais donné de sexy surnom à moi-même.',
  'Je n’ai jamais gouté de la nourriture de bébé quand j’étais déjà grand(e).',
  'Je ne suis jamais allé(e) à Disneyland.'
];

var listDare = [
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

var listTruth = [
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

class Melimelo extends StatelessWidget {
  const Melimelo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    listDare.shuffle();
    listJeNaiJamais.shuffle();
    listTruth.shuffle();
    var memes = List<String>.generate(30, (i) => "");
    var list =  List.from(listDare.take(30)) + List.from(listJeNaiJamais.take(30)) + List.from(listTruth.take(30))  + memes;
    return IGame(list);
  }

}


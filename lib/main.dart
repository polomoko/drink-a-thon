import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// list utilisateurs (Nom - sex)
// Superutilisateurs "coquinous"(target0)

// Jeu de meme (Une image sur le telephone, celui qui a le telephone est le juge les autres trouve la legende la plus drole)

// Je n'ai jamais
var list = [
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
  'Je ne suis jamais allé(e) à Disneyland.',
  'three'
];
// Verite
// actions
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

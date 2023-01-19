// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';

class Planet {
  final String image, title, subtitle, description;
  final int id;
  Planet(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.description});
}

List<Planet> planets = [
  Planet(
    id: 1,
    title: "Mercure",
    subtitle: "Je suis la planéte la plus proche du soleil et la moins massive",
    description:
        "L'atmosphère de Mercure est quasi inexistante à cause de la température très élevée de la surface et de la faible gravité de la planète.La surface est couverte d\'un tapis poussiéreux de minéraux (silicates), de cassures et de cratères d\'impact. La planète ressemble beaucoup en apparence à la Lune, ne présentant a priori aucun signe d\'activité interne.",
    image: "assets/images/mercure.png",
  ),
  Planet(
    id: 2,
    title: "Venus",
    subtitle: "Je suis la planéte la plus proche du soleil et la moins massive",
    description:
        "Je suis la planéte la plus proche du soleil et la moins massive",
    image: "assets/images/venus.png",
  ),
  Planet(
    id: 3,
    title: "Terre",
    subtitle: "Je suis la planéte bleu",
    description:
        "La Terre est la troisième planète du Système solaire par ordre de distance croissante au Soleil, et la quatrième par taille et par masse croissantes. C'est la plus grande et la plus massive des quatre planètes telluriques, les trois autres étant Mercure, Vénus et Mars. La Terre est parfois qualifiée de \"planète bleue\" : 71 % de sa surface est couverte par des océans d'eau salée qui constituent en partie l'hydrosphère. De la glace ou des banquises recouvrent en partie les pôles.La Terre abrite des millions d'espèces vivantes dont les humains.La biosphère de la Terre a fortement modifié l\'atmosphère, en l\'enrichissant en O2, permettant la prolifération d'organismes aérobies de même que la formation d'une couche d'ozone qui bloque une partie des rayons ultraviolets (UV) solaires.",
    image: "assets/images/terre.png",
  ),
  Planet(
      id: 4,
      title: "Mars",
      subtitle: "Je suis la planéte rouge",
      description: "Je suis la planéte rouge",
      image: "assets/images/mars.png"),
  Planet(
      id: 5,
      title: "Jupiter",
      subtitle: "Je suis la planéte rouge Je suis la planéte rouge",
      description: "Je suis la planéte rouge Je suis la planéte rouge",
      image: "assets/images/jupiter.png"),
  Planet(
    id: 6,
    title: "Sature",
    subtitle: "Je suis la planéte aux annaux",
    description: "Je suis la planéte rouge",
    image: "assets/images/saturne.png",
  ),
  Planet(
    id: 7,
    title: "Uranus",
    subtitle:
        "Uranus est la septième planète du Système solaire par ordre d'éloignement du Soleil",
    description: "Gazeuse tout comme Jupiter et Saturne, Uranus diffère cependant par sa composition, c'est pourquoi on la qualifie, comme Neptune, de \"géante de glace\".Uranus présente une très forte inclinaison de son axe qui est quasiment parallèle au plan orbital. La planète « roule » pour ainsi dire sur son orbite.",
    image: "assets/images/uranus.png",
  ),
  Planet(
    id: 8,
    title: "Neptune",
    subtitle: "Je suis la planéte rouge Je suis la planéte rouge",
    description: "Je suis la planéte rouge Je suis la planéte rouge",
    image: "assets/images/neptune.png",
  ),
];

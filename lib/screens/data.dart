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
        "Je suis la planéte la plus proche du soleil et la moins massive",
    image: "assets/images/mercure.jpg",
  ),
  Planet(
    id: 2,
    title: "Venus",
    subtitle: "Je suis la planéte la plus proche du soleil et la moins massive",
    description:
        "Je suis la planéte la plus proche du soleil et la moins massive",
    image: "assets/images/venus.jpg",
  ),
  Planet(
    id: 3,
    title: "Terre",
    subtitle: "Je suis la planéte bleu",
    description:
        "La Terre est la troisième planète du Système solaire par ordre de distance croissante au Soleil, et la quatrième par taille et par masse croissantes. C'est la plus grande et la plus massive des quatre planètes telluriques, les trois autres étant Mercure, Vénus et Mars.",
    image: "assets/images/terre2.png",
  ),
  Planet(
      id: 4,
      title: "Mars",
      subtitle: "Je suis la planéte rouge",
      description: "Je suis la planéte rouge",
      image: "assets/images/mars.jpg"),
  Planet(
      id: 5,
      title: "Jupiter",
      subtitle: "Je suis la planéte rouge Je suis la planéte rouge",
      description: "Je suis la planéte rouge Je suis la planéte rouge",
      image: "assets/images/mars.jpg"),
  Planet(
    id: 6,
    title: "Sature",
    subtitle: "Je suis la planéte rouge",
    description: "Je suis la planéte rouge",
    image: "assets/images/saturne.jpg",
  ),
  Planet(
    id: 7,
    title: "Uranus",
    subtitle: "Je suis la planéte bleu",
    description: "Je suis la planéte bleu",
    image: "assets/images/terre2.jpeg",
  ),
  Planet(
    id: 8,
    title: "Neptune",
    subtitle: "Je suis la planéte rouge Je suis la planéte rouge",
    description: "Je suis la planéte rouge Je suis la planéte rouge",
    image: "assets/images/saturne.jpg",
  ),
];

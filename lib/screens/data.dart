import 'package:flutter/material.dart';

class Planet {
  final String image, title, description;
  final int id;
  Planet(
      {required this.id,
      required this.title,
      required this.image,
      required this.description});
}

List<Planet> planets = [
  Planet(
    id: 1,
    title: "Mercure",
    description:
        "Je suis la planéte la plus proche du soleil et la moins massive",
    image: "assets/images/mercure.jpg",
  ),
  Planet(
    id: 2,
    title: "Venus",
    description:
        "Je suis la planéte la plus proche du soleil et la moins massive",
    image: "assets/images/venus.jpg",
  ),
  Planet(
    id: 3,
    title: "Terre",
    description: "Je suis la planéte bleu",
    image: "assets/images/terre2.png",
  ),
  Planet(
      id: 4,
      title: "Mars",
      description: "Je suis la planéte rouge",
      image: "assets/images/mars.jpg"),
  Planet(
    id: 5,
    title: "Sature",
    description: "Je suis la planéte rouge",
    image: "assets/images/saturne.jpg",
  ),
  Planet(
      id: 6,
      title: "Mars",
      description: "Je suis la planéte rouge Je suis la planéte rouge",
      image: "assets/images/mars.jpg"),
  Planet(
    id: 1,
    title: "Terre",
    description: "Je suis la planéte bleu",
    image: "assets/images/terre2.jpeg",
  ),
  Planet(
    id: 1,
    title: "Sature",
    description: "Je suis la planéte rouge Je suis la planéte rouge",
    image: "assets/images/saturne.jpg",
  ),
  Planet(
    id: 1,
    title: "Sature",
    description: "Je suis la planéte rouge Je suis la planéte rouge",
    image: "assets/images/saturne.jpg",
  ),
  Planet(
      id: 1,
      title: "Mars",
      description: "Je suis la planéte rouge",
      image: "assets/images/mars.jpg"),
  Planet(
    id: 1,
    title: "Terre",
    description: "Je suis la planéte bleu Je suis la planéte rouge",
    image: "assets/images/terre2.jpeg",
  ),
  Planet(
    id: 1,
    title: "Sature",
    description: "Je suis la planéte rouge Je suis la planéte rouge",
    image: "assets/images/saturne.jpg",
  ),
];

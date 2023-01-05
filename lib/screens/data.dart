import 'package:flutter/material.dart';

class Planet {
  final String image, title, description;
  final int id;
  Planet({required this.id, required this.title, required this.image, required this.description});
}

List<Planet> planets = [
  Planet(
      id: 1,
      title: "Mars",
      description: "Je suis la planéte rouge",
      image: "assets/images/mars.jpg"),
  Planet(
    id: 1,
    title: "Terre",
    description: "Je suis la planéte rouge",
    image: "assets/images/terre.jpg",
  ),
    Planet(
    id: 1,
    title: "Sature",
    description: "Je suis la planéte rouge",
    image: "assets/images/saturne.jpg",
  ),
];

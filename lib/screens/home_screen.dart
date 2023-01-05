import 'package:astro_app/screens/data.dart';
import 'package:flutter/material.dart';

import '../util/tils.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void tilSelected() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Astro App",
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Astro"),
          centerTitle: true,
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () => {})
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.white)),
        ),
        body: Column(children: [
          Container(
            height: 50,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Tils(
                tils: "planete",
                isSelected: true,
                onTap: tilSelected,
              ),
              Tils(
                tils: "etoiles",
                isSelected: false,
                onTap: tilSelected,
              ),
              Tils(
                tils: "glaxies",
                isSelected: false,
                onTap: tilSelected,
              ),
              Tils(
                tils: "phénoménes",
                isSelected: false,
                onTap: tilSelected,
              ),
            ]),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              height: 300,
              child: ListView.builder(
                itemCount: planets.length,
                itemBuilder: (context, index) =>
                    ItemCard(planet: planets[index]),
              ))
        ]),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Planet planet;
  // final Function press;
  const ItemCard({
    Key? key,
    required this.planet,
    // required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
            width: 110,
            height: 110,
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: Image.asset(planet.image)),
        tileColor: Color(0x1F2038),
        title: Text(
          "${planet.title}",
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Text("${planet.description}"),
      ),
    );
  }
}

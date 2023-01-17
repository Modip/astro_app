import 'package:astro_app/screens/data.dart';
import 'package:astro_app/screens/detail.dart';
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
          toolbarHeight: 50,
          backgroundColor: Colors.black,
          title: const Text("Astro"),
          centerTitle: true,
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () => {})
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.white),
          ),
        ),
        body: Column(children: [
          Container(
            height: 50,
            color: Colors.black,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Tils(
                tils: "planéte",
                isSelected: true,
                onTap: tilSelected,
              ),
              Tils(
                tils: "étoiles",
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
            margin: const EdgeInsets.only(top: 20),
            height: 350,
            child: ListView.builder(
              itemCount: planets.length,
              itemBuilder: (context, index) => ItemCard(
                planet: planets[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(planet: planets[index]),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Planet planet;
  final press;

  const ItemCard({Key? key, required this.planet, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: ListTile(
        leading: Container(
          width: 60,
          height: 110,
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: Image.asset(planet.image),
        ),
        tileColor: const Color.fromARGB(255, 28, 29, 58),
        title: Text(
          planet.title,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Text(
          "${planet.subtitle}",
          style: const TextStyle(fontSize: 12, color: Colors.white),
        ),
      ),
    );
  }
}

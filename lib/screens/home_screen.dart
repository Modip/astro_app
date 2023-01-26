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
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 50,
              color: Colors.black,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Tils(
                  tils: "planétes",
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
              margin: const EdgeInsets.only(top: 10),
              height: 600,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Card(
          elevation: 6,
          shadowColor: const Color.fromARGB(255, 187, 189, 207),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          color: const Color.fromARGB(255, 31, 32, 56),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Image.asset(
                  planet.image,
                  width: 100,
                  height: 100,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        planet.title,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      planet.subtitle,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 187, 189, 207),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

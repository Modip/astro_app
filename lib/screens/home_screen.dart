import 'package:flutter/material.dart';

import '../util/tils.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void tilSelected(){

  }

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
          Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  color: Colors.grey,
                ),
              ),
            ],
          ))
        ]),
      ),
    );
  }
}

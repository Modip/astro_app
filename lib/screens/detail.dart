import 'package:flutter/material.dart';
import 'data.dart';

class Detail extends StatelessWidget {
  final Planet planet;
  const Detail({Key? key, required this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x1F2038),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: const Color(0x1F2038),
        title: const Text("Astro"),
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.white)),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: 240,
              margin: const EdgeInsets.only(
                top: 175,
                left: 12,
                right: 12,
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 28, 29, 58),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10, top: 0),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      'Description',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      planet.description,
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: ListView(children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 35),
                    padding: const EdgeInsets.only(bottom: 0),
                    height: 135,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            planet.title,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 145,
                    padding: const EdgeInsets.all(0),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Image.asset(
                        planet.image,
                        width: 145,
                        height: 145,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              width: double.infinity,
              color: const Color.fromARGB(255, 187, 189, 207),
            ),
          ),
        ],
      ),
    );
  }
}

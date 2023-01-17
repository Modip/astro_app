import 'package:flutter/material.dart';
import 'data.dart';

class Detail extends StatelessWidget {
  final Planet planet;
  const Detail({Key? key, required this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x1F2038),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.black,
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
              margin: const EdgeInsets.only(
                top: 210,
                left: 10,
                right: 10,
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 28, 29, 58),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 30, right: 30, top: 0),
                child: ListView(
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Bali is famous for beaches,la terre la terre la terre  countless waves for surfing scuba diving, natiral sites to visit and explore tremely fascinating Hindus culture with colorfuls ceremonies and magnificent temples gifted artists the producing',
                      style: TextStyle(color: Colors.white, fontSize: 14),
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
                    margin: const EdgeInsets.only(top: 70),
                    padding: const EdgeInsets.only(bottom: 10),
                    height: 140,
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
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Image.asset(planet.image),
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
                height: 60,
                width: double.infinity,
                color: Colors.blue,
              )),
        ],
      ),
    );
  }
}

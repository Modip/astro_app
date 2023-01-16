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
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 440,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 200, left: 10, right: 10),
                        height: 220,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 28, 29, 58),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            planet.title,
                            style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

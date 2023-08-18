import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
      body: SafeArea(
        
        child: ListView(
          children: [
            Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  planet.image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Padding(
                    padding: EdgeInsets.all(3),
                    child: Text(
                      planet.title,
                      style:const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 31, 32, 56),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child:  Text(
                        planet.description,
                        style: const  TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: RatingBar.builder(
                      initialRating: 3.5,
                      allowHalfRating: true,
                      unratedColor: Colors.white,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, index) {
                        return const Icon(
                          Icons.star,
                          color: Colors.amber,
                        );
                      },
                      onRatingUpdate: (rating) {}),
                ),
              ),
            ],
          ),
        ),
          ],
        ),
        
      ),
    );
  }
}

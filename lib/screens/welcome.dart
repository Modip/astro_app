import 'package:astro_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x1F2038),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              Spacer(),
              Image.asset('assets/images/imag1.jpg'),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Lever la tete \nle ciel vous parle",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "On observe des planets des etoiles \nvoire memes des orores ",
                style: TextStyle(fontSize: 14, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 35, right: 35),
                child: SizedBox(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                  width: 1, color: Colors.white))),
                      child: const Text("Commencez")),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

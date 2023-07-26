import 'package:flutter/material.dart';
import 'package:planteve/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Image.asset(
              "assets/images/plant.jpg", // Background
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 105),
                child: Center(
                  child: Image.asset(
                    "assets/images/plantlogo.png",
                    height: 180,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 8),
                  child: Image.asset(
                    "assets/images/tag.png",
                    height: 100,
                  )),
              Container(
                margin: const EdgeInsets.only(top: 150),
                child: Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(310, 48),
                        backgroundColor: Colors.white24,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoginPage()));
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Center(
                child: Text(
                  "Create an Account",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ),
            ], //Children
          )
        ],
      ),
    );
  }
}

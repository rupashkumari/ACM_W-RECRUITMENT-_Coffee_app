import 'package:flutter/material.dart';

import 'main.dart';



class Latte extends StatefulWidget {
  const Latte({super.key});

  @override
  State<Latte> createState() => _LatteState();
}

class _LatteState extends State<Latte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.brown,
            size: 40,
          ),
        ),
      ),
      backgroundColor: Colors.black,
    body: const SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Latte',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [

            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ingredients',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Espresso, streamed milk and a \n thin layer of milk foam',
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Steps',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('1. Grind the beans. \n 2. Tamp, \n 3. Pull the shot. \n 4. Steam the milk. \n 5. Pour and Enjoy!',
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}
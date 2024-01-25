import 'package:flutter/material.dart';

import 'main.dart';



class Espresso extends StatefulWidget {
  const Espresso({super.key});

  @override
  State<Espresso> createState() => _EspressoState();
}

class _EspressoState extends State<Espresso> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              Text('Espresso',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [],
          ),

          SizedBox(
            height: 50,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ingredients',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Text('Finely ground, 100% coffee, and hot water',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
          ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Steps',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
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
           Text('1. Grind and weigh your coffee. \n Your grounds should be powdery and fine,so \n use the finest seeting on your grinder. \n 2.Distribute and tamp your shot. Transfer the filled \n portafilter to a counter or flat surface. \n 3. Pull your shot. \n 4. Prepare milk if using and enjoy your Espresso. ',
            style: TextStyle(
              color: Colors.white38,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )
        ],
      ),
    ),
    );
  }
  }
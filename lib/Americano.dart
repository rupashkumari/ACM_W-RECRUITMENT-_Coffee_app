import 'package:flutter/material.dart';

import 'main.dart';



class Americano extends StatefulWidget {
  const Americano({super.key});

  @override
  State<Americano> createState() => _AmericanoState();
}

class _AmericanoState extends State<Americano> {
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
          SizedBox(
            height: 55,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Americano',
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
        child: Text('1/2- espresso, 2/3- water.',
          style:TextStyle(
            color: Colors.white54,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),

        ),
      ),
          SizedBox(
            height:10,
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
              Text('1. Fill the mug approx 2/3rds full with hot water. \n 2. Brew a single or double espresso directly into the \n  mug containing hot water. \n 3. Enjoy your Americano!',
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
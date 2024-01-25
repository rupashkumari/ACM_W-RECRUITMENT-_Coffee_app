import 'package:flutter/material.dart';

import 'main.dart';



class Cortado extends StatefulWidget {
  const Cortado({super.key});

  @override
  State<Cortado> createState() => _CortadoState();
}

class _CortadoState extends State<Cortado> {
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
              Text('Cortado',
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
        child: Text('Equal parts espresso and steamed milk.',
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
              Text(' 1. Make the espresso. \n 2. Steam the milk. \n 3. Pour 2 ounches espresso into the cortado glass,\n  then top with the steamed milk. \n 4. Enjoy your Cortado! ',
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
import 'package:flutter/material.dart';

import 'main.dart';



class Irish extends StatefulWidget {
  const Irish({super.key});

  @override
  State<Irish> createState() => _IrishState();
}

class _IrishState extends State<Irish> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              Text('Irish',
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
        child: Text('Hot coffee,sugar, cream, and whiskey',
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
              Text('1. Add 2 teaspoons of brown sugar to a heatproof glass. \n 2. Pour in 3/4 cup of hot coffee. \n 3. Add 1 1/2 ounces of whiskey. \n 4. Spoon in 1 ounce of whipped cream. \n 5. Enjoy your Irish!',
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
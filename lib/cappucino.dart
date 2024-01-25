import 'package:flutter/material.dart';

import 'main.dart';

class Cappuccino extends StatefulWidget {
  const Cappuccino({super.key});

  @override
  State<Cappuccino> createState() => _CappuccinoState();
}

class _CappuccinoState extends State<Cappuccino> {
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
              Icons.arrow_back_ios_new_sharp,
              color: Colors.brown,
              size: 40,
            ),
          ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cappucino',
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Row(
              children: [],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width,
                  child: const Text(
                    'Ingredients',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  child: Text(
                    '2 to 2.5 oz espresso(double shot), 2.5 oz \n frothed milk, 2.5 oz steamed milk',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
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
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' 1. Pull a shot of espresso from \nground coffee. \n 2.Steam the milk,moving the \npitcher up and down, and around \nthe wand to froth the milk until the \nvolume is double.\n 3.'
                  'Tap the milk on top of the \ncounter to remove the biggest \nbubbles.\n 4. Pour the foamy milk on top of \nyour espresso shot.\n 5.Sprinkle some cocoa powder \nor cinnamon if it suits your \ntaste. ',
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

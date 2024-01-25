import 'package:coffee_app/Americano.dart';
import 'package:coffee_app/Cortado.dart';
import 'package:coffee_app/Espresso.dart';
import 'package:coffee_app/Irish.dart';
import 'package:coffee_app/Latte.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/cappucino.dart';
import 'package:coffee_app/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Coffee',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void snackBar() {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.brown,
            content: Text('Order is added to cart',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
              textAlign: TextAlign.center,
            ),
            duration: Duration(seconds: 1),
          )
        );
  }
  void addCap() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.brown,
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add your order',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
              content: const Text(
                'Cost: 130/- \n\nYour order will take\n25 mins',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white54,
                ),
              ),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      addToCart('Cappuccino');
                      Navigator.pop(context);
                      snackBar();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ))
              ],
            ));
  }
  void addEsp() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.brown,
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add your order',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
              content: const Text(
                'Cost: 150/- \n\nYour order will take\n20 mins',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white54,
                ),
              ),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      addToCart('Espresso');
                      Navigator.pop(context);
                      snackBar();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ))
              ],
            ));
  }

  void addLatte() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.brown,
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add your order',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
              content: const Text(
                'Cost: 130/- \n\nYour order will take\n15 mins',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white54,
                ),
              ),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      addToCart('Latte');
                      Navigator.pop(context);
                      snackBar();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ))
              ],
            ));
  }

  void addIrish() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.brown,
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add your order',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
              content: const Text(
                'Cost: 175/- \n\nYour order will take\n25 mins',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white54,
                ),
              ),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      addToCart('Irish');
                      Navigator.pop(context);
                      snackBar();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ))
              ],
            ));
  }

  void addCor() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.brown,
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add your order',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
              content: const Text(
                'Cost: 105/- \n\nYour order will take\n15 mins',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white54,
                ),
              ),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      addToCart('Cortado');
                      Navigator.pop(context);
                      snackBar();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ))
              ],
            ));
  }

  void addAmer() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.brown,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add your order',
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
          ],
        ),
        content: const Text(
          'Cost: 175/- \n\nYour order will take\n10 mins',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white54,
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              addToCart('Americano');
              Navigator.pop(context);
              snackBar();
            },
            child: Container(
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void addToCart(String item) {
    // Update the Cart by calling the add method
    cartStateKey.currentState?.addItem(item);
    print('Item added is: $item');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          padding: EdgeInsets.all(12.0),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              );
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.brown,
              size: 35,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Select Your Coffee',
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/cap.png',
                      width: size.width * 0.8, // Adjust the width as needed
                      height: size.width * 0.5, // Adjust the height as needed
                      fit: BoxFit.contain, // Adjust the BoxFit as needed
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  const Row(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Cappuccino',
                        style: TextStyle(
                          color: Colors.white70,
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
                    children: [
                      Text(
                        '1/3 Espresso \n 1/3 Streamed milk \n 1/3 foom-dusted cocoa',
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Cappuccino(),
                            ),
                          );
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.white70),
                        ),
                        child: const Text(
                          'See Recipe',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          addCap();
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.white70),
                        ),
                        child: const Text(
                          '+',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Espresso',
                          style: TextStyle(
                            color: Colors.white70,
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
                      children: [
                        Text(
                          'Intense flavor-30ml\n 20-30s brew time',
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Espresso(),
                              ),
                            );
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white70),
                          ),
                          child: const Text(
                            'See Recipe',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            addEsp();
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white70),
                          ),
                          child: const Text(
                            '+',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/esp.png',
                        width: size.width * 0.99, // Adjust the width as needed
                        height: size.width * 0.6, // Adjust the height as needed
                        fit: BoxFit.contain, // Adjust the BoxFit as needed
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/lat.png',
                        width: size.width * 0.9, // Adjust the width as needed
                        height: size.width * 0.5, // Adjust the height as needed
                        fit: BoxFit.contain, // Adjust the BoxFit as needed
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Latte',
                          style: TextStyle(
                            color: Colors.white70,
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
                      children: [
                        Text(
                          '1/3 Espresso \n 1/3 Streamed milk',
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Latte(),
                              ),
                            );
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white70),
                          ),
                          child: const Text(
                            'See Recipe',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            addLatte();
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white70),
                          ),
                          child: const Text(
                            '+',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Irish',
                          style: TextStyle(
                            color: Colors.white70,
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
                      children: [
                        Text(
                          'Coffee, Whiskey, Sugar,\nCream',
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Irish(),
                              ),
                            );
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white70),
                          ),
                          child: const Text(
                            'See Recipe',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            addIrish();
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white70),
                          ),
                          child: const Text(
                            '+',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/iri.png',
                        width: size.width * 0.9, // Adjust the width as needed
                        height: size.width * 0.7, // Adjust the height as needed
                        fit: BoxFit.contain, // Adjust the BoxFit as needed
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/cort.png',
                        width: size.width * 0.45, // Adjust the width as needed
                        height: size.width * 0.5, // Adjust the height as needed
                        fit: BoxFit.contain, // Adjust the BoxFit as needed
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Cortado',
                          style: TextStyle(
                            color: Colors.white70,
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
                      children: [
                        Text(
                          '1/3 Espresso \n 1/3 Streamed milk ',
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Cortado(),
                              ),
                            );
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white70),
                          ),
                          child: const Text(
                            'See Recipe',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            addCor();
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white70),
                          ),
                          child: const Text(
                            '+',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Column(
                  children: [],
                ),
              ],
            ),
            const SizedBox(
              height: 19,
            ),
            Row(
              children: [
                Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Americano',
                          style: TextStyle(
                            color: Colors.white70,
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
                      children: [
                        Text(
                          '1/3 Espresso \n 1/3 Hot Water',
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Americano(),
                              ),
                            );
                          },
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white70),
                          ),
                          child: const Text(
                            'See Recipe',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        addAmer();
                      },
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.white70),
                      ),
                      child: const Text(
                        '+',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 70,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/amer.png',
                        width: size.width * 0.4, // Adjust the width as needed
                        height: size.width * 0.5, // Adjust the height as needed
                        fit: BoxFit.contain, // Adjust the BoxFit as needed
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

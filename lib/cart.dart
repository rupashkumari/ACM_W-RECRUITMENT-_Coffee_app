import 'package:flutter/material.dart';
import 'package:coffee_app/main.dart';

GlobalKey<CartState> cartStateKey = GlobalKey<CartState>();

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  CartState createState() => CartState();
}

class CartState extends State<Cart> {
  List<String> itemList = [
    'Cappuccino',
    'Espresso',
    'Cortado',
    'Irish',
    'Americano',
    'Latte'
  ];
  String itemName = '';

  void addItem(String item) {
    setState(() {
      itemList.add(item);
      print(itemList);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Calculate the total price

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.brown,
            ),
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
                'Items in your cart',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]
            ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              // Display the items in separate cards
              ListView.builder(
                shrinkWrap: true,
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  String itemName = itemList[index];

                  return Card(
                    color: Colors.white60,
                    child: ListTile(
                      title: Text(
                        itemName,
                        style: const TextStyle(
                          color: Colors.brown,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 345,
              ),
              // Display the total price
              Column(children: [
                Positioned(
                  child: Container(
                    color: Colors.brown,
                    child: const ListTile(
                      title: Text(
                        'Total Price: 760/-',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

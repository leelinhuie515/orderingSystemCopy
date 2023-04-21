import 'package:flutter/material.dart';
import 'package:orderingsystem/components/coffee_tile.dart';
import 'package:orderingsystem/model/coffee_shop.dart';
import 'package:provider/provider.dart';

import '../model/coffee.dart';

class coffeePage extends StatefulWidget {
  const coffeePage({Key? key}) : super(key: key);

  @override
  State<coffeePage> createState() => _coffeePageState();
}

class _coffeePageState extends State<coffeePage> {

  //add coffee to cart
  void addToCart(Coffee coffee){
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [

              //heading message
              const Text(
                "Coffee",
                style: TextStyle(
                  fontSize: 45,
                  fontFamily: 'Modern Love',
                ),
              ),
              const SizedBox(height: 25),

              //list of coffee to buy
              Expanded(
                child: ListView.builder(
                  itemCount:value.coffeeShop.length,
                  itemBuilder: (context, index){
                    // get individual coffee
                    Coffee eachCoffee = value.coffeeShop[index];

                    //return the tile for this coffee
                    return CoffeeTitle(
                      coffee: eachCoffee,
                      icon: Icon(Icons.add),
                      onPressed: () => addToCart(eachCoffee),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}

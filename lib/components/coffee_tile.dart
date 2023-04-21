import 'package:flutter/material.dart';
import 'package:orderingsystem/model/cart.dart';
import 'package:orderingsystem/model/coffee.dart';
import 'package:orderingsystem/model/cart_model.dart';

CartModel cartmodel = CartModel();

class CoffeeTitle extends StatefulWidget {
  final Coffee coffee;
  void Function()? onPressed;
  CoffeeTitle({super.key, required this.coffee, required this.onPressed});

  @override
  State<CoffeeTitle> createState() => _CoffeeTitleState();
}

class _CoffeeTitleState extends State<CoffeeTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: ListTile(
        title: Text(
          widget.coffee.name,
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Text(
          widget.coffee.price,
          style: TextStyle(fontSize: 15),
        ),
        leading: Image.asset(widget.coffee.imagepath),
        trailing: IconButton(
            onPressed: () {
              setState(() {
                cartmodel.addToCart(Cart(
                    name: widget.coffee.name,
                    price: widget.coffee.price,
                    imagepath: widget.coffee.imagepath));
              });
              // print('Coffee pressed.');
              // print(widget.coffee.name + "\n" + widget.coffee.price);
            },
            icon: const Icon(Icons.add)),
      ),
    );
  }
}

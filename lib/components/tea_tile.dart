import 'package:flutter/material.dart';
import 'package:orderingsystem/model/cart.dart';

import '../model/tea.dart';
import 'package:orderingsystem/model/cart_model.dart';

CartModel cartmodel = CartModel();

class Teatile extends StatefulWidget {
  final Tea tea;
  const Teatile({super.key, required this.tea});

  @override
  State<Teatile> createState() => _TeatileState();
}

class _TeatileState extends State<Teatile> {
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
          widget.tea.name,
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Text(
          widget.tea.price,
          style: TextStyle(fontSize: 15),
        ),
        leading: Image.asset(widget.tea.imagepath),
        trailing: IconButton(
            onPressed: () {
              setState(() {
                cartmodel.addToCart(Cart(
                    name: widget.tea.name,
                    price: widget.tea.price,
                    imagepath: widget.tea.imagepath));
              });
              // print('Tea pressed.');
              // print(widget.tea.name + "\n" + widget.tea.price);
            },
            icon: const Icon(Icons.add)),
      ),
    );
  }
}

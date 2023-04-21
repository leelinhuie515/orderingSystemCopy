import 'package:flutter/material.dart';
import 'package:orderingsystem/model/bread.dart';
import 'package:orderingsystem/model/bread_shop.dart';
import 'package:orderingsystem/model/cart.dart';
import 'package:orderingsystem/model/cart_model.dart';

CartModel cartmodel = CartModel();

class BreadTile extends StatefulWidget {
  final Bread bread;
  const BreadTile({super.key, required this.bread});

  @override
  State<BreadTile> createState() => _BreadTileState();
}

class _BreadTileState extends State<BreadTile> {
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
            widget.bread.name,
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
            widget.bread.price,
            style: TextStyle(fontSize: 15),
          ),
          leading: Image.asset(widget.bread.imagepath),
          trailing: IconButton(
              onPressed: () {
                cartmodel.addToCart(Cart(
                    name: widget.bread.name,
                    price: widget.bread.price,
                    imagepath: widget.bread.imagepath));
                cartmodel.test(widget.bread.name, widget.bread.price, widget.bread.imagepath);
              },
              icon: const Icon(Icons.add)),
        ));
  }
}

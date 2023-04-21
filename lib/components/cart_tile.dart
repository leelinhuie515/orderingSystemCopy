import 'package:flutter/material.dart';
import 'package:orderingsystem/model/cart_model.dart';
import 'package:orderingsystem/model/cart.dart';
import 'package:provider/provider.dart';

class CartTile extends StatefulWidget {
  final Cart cart;
  const CartTile({super.key, required this.cart});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
        child: ListTile(
          leading: Image.asset(
            widget.cart.imagepath,
            height: 36,
          ),
          title: Text(
            widget.cart.name,
            style: const TextStyle(fontSize: 18),
          ),
          subtitle: Text(
            '\$' + widget.cart.price,
            style: const TextStyle(fontSize: 12),
          ),
          trailing: IconButton(
              icon: const Icon(Icons.cancel),
              onPressed: () => {
                    // Provider.of<CartModel>(context, listen: false)
                    //     .removeItemFromCart(),
                  }),
        ),
      ),
    );
  }
}

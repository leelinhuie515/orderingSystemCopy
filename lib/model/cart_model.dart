import 'package:flutter/material.dart';
import 'package:orderingsystem/pages/bread_page.dart';
import 'package:provider/provider.dart';
import 'cart.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  // final List _shopItems = const [
  //   // [ itemName, itemPrice, imagePath, color ]
  //   ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
  //   ["Banana", "2.50", "lib/images/banana.png", Colors.yellow],
  //   ["Chicken", "12.80", "lib/images/chicken.png", Colors.brown],
  //   ["Water", "1.00", "lib/images/water.png", Colors.blue],
  // ];

  // list of cart items
  List<Cart> _cartItems = [
    Cart(name: "1111", price: 'price', imagepath: 'imagepath'),
    Cart(name: "2222", price: 'price', imagepath: 'imagepath'),
    Cart(name: "3333", price: 'price', imagepath: 'imagepath'),
    Cart(name: "4444", price: 'price', imagepath: 'imagepath')
  ];

  List<Cart> get cartItems => _cartItems;

  void addToCart(Cart cart){
    _cartItems.add(cart);
    notifyListeners();
    print('item added');
    print(cartItems);
  }

  void test(String name,String price,String imagepath){
    _cartItems.add(Cart(name: name, price: price, imagepath: imagepath));
  }

  // get shopItems => _shopItems;
  //
  // // add item to cart
  // void addItemToCart(int index) {
  //   _cartItems.add(_shopItems[index]);
  //   notifyListeners();
  // }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      // totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}

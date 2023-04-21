import 'package:flutter/material.dart';
import 'package:orderingsystem/model/bread.dart';

class BreadShop extends ChangeNotifier{
  // bread for sale list
  final List<Bread> _shop = [
    //bread 1
    Bread(
      name: 'bread 1',
      price: '0.00',
      imagepath: "",
    ),
    //bread 2
    Bread(
      name: 'bread 2',
      price: '0.00',
      imagepath:"" ,
    ),
    //bread 3
    Bread(
      name: 'bread 3',
      price: '0.00',
      imagepath: "",
    ),
    //bread 4
    Bread(
      name: 'bread 4',
      price: '0.00',
      imagepath: "",
    ),
  ];
  // user cart
  List<Bread> _userCart = [];
  // get bread list
  List<Bread> get breadShop => _shop;
  // get user cart
  List<Bread> get userCart => _userCart;
  // add item to cart
  void addItemToCart(Bread bread){
    _userCart.add(bread);
    notifyListeners();
  }
  // remove item from cart
  void removeItemFromCart(Bread bread){
    _userCart.remove(bread);
    notifyListeners();
  }
}
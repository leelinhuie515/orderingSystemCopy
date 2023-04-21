import 'package:flutter/material.dart';
import 'package:orderingsystem/model/tea.dart';

class TeaShop extends ChangeNotifier{
  // tea for sale list
  final List<Tea> _shop =[
    //tea 1
    Tea(
      name: 'tea 1',
      price: '0.00',
      imagepath: "",
    ),
    //tea 2
    Tea(
      name: 'tea 2',
      price: '0.00',
      imagepath: "",
    ),
    //tea 3
    Tea(
      name: 'tea 3',
      price: '0.00',
      imagepath: "",
    ),
    //tea 4
    Tea(
      name: 'tea 4',
      price: '0.00',
      imagepath: "",
    ),
  ];
  //user cart
  List<Tea> _userCart =[];
//get tea list
  List<Tea> get teaShop =>_shop;
//get user cart
  List<Tea> get userCart => _userCart;
//add item to cart
  void addItemToCart(Tea tea){
    _userCart.add(tea);
    notifyListeners();
  }
// remove item from cart
  void removeItemFromcart(Tea tea){
    _userCart.remove(tea);
    notifyListeners();
  }
}
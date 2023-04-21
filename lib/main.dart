import 'package:flutter/material.dart';
import 'package:orderingsystem/model/coffee_shop.dart';
import 'package:orderingsystem/model/tea_shop.dart';
import 'package:orderingsystem/pages/home_page.dart';
import 'package:provider/provider.dart';
import '../model/cart_model.dart';
import 'model/bread_shop.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        Provider(create: (context) => CoffeeShop()),
        Provider(create: (context) => BreadShop()),
        Provider(create: (context) => TeaShop()),
        Provider(create: (context) => CartModel(),)
      ],
      builder: (context, child) => const MaterialApp(
        // debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),

    );

  }

}

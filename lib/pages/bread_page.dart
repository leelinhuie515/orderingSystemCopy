import 'package:flutter/material.dart';
import 'package:orderingsystem/components/bread_tile.dart';
import 'package:orderingsystem/model/bread_shop.dart';
import 'package:provider/provider.dart';
import '../model/bread.dart';

class breadPage extends StatefulWidget {
  const breadPage({Key? key}) : super(key: key);

  @override
  State<breadPage> createState() => _breadPageState();
}

class _breadPageState extends State<breadPage> {

  void addToCart(Bread bread){
    Provider.of<BreadShop>(context, listen: false).addItemToCart(bread);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<BreadShop>(
      builder: (context, value, child)=>SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading message
              Text(
                "Bread",
                style: TextStyle(
                  fontSize: 45,
                  fontFamily: 'Modern Love',
                ),
              ),

              const SizedBox(height: 25),

              //list of bread to buy
              Expanded(
                child: ListView.builder(
                  itemCount: value.breadShop.length,
                  itemBuilder: (context, index){
                    //get individual bread
                    Bread eachBread = value.breadShop[index];
                    //return the tile for this bread
                    return BreadTile(
                        bread: eachBread,
                    );
                  }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

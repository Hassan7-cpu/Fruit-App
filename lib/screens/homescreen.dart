import 'package:flutter/material.dart';
import 'package:fruitapp/models/gategory_models.dart';
import 'package:fruitapp/widgets/banners.dart';
import 'package:fruitapp/widgets/basket.dart';
import 'package:fruitapp/widgets/gategory.dart';
import 'package:fruitapp/widgets/home_appBar.dart';
import 'package:fruitapp/widgets/products.dart';
import 'package:fruitapp/widgets/row_fruits.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<ProductModels> basket = [];

  void toggleBasket(ProductModels product) {
    setState(() {
      if (basket.contains(product)) {
        basket.remove(product);
      } else {
        basket.add(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 22, title: HomeAppbar()),
      body: Column(
        children: [
          Banners(),
          Gategory(),
          RowFruits(),
          ProductItem(
            onAdd: toggleBasket,
            basket: basket,
          ),
          const SizedBox(height: 15),
          Basket(
  basket: basket,
  onRemove: (product) {
    setState(() {
      basket.remove(product);
    });
  },
),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruitapp/models/gategory_models.dart';

class Gategory extends StatelessWidget {
  Gategory({super.key});

  final List<CategoryModels> gategory = [
    CategoryModels(name: 'Fruits', image: 'assets/Gategory/Fruits.png'),
    CategoryModels(name: 'Milk & egg', image: 'assets/Gategory/egg&milk.png'),
    CategoryModels(name: 'Beverages', image: 'assets/Gategory/Beverages.png'),
    CategoryModels(name: 'Laundry', image: 'assets/Gategory/Laundry.png'),
    CategoryModels(name: 'Vegetables', image: 'assets/Gategory/Vegetables.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: gategory.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset(
                    gategory[index].image,
                    height: 40,
                    width: 40,
                  ),
                ),
                const SizedBox(height: 8),
                Text(gategory[index].name),
              ],
            ),
          );
        },
      ),
    );
  }
}

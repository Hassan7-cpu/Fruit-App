import 'package:flutter/material.dart';
import 'package:fruitapp/models/gategory_models.dart';

class Basket extends StatelessWidget {
  const Basket({
    super.key,
    required this.basket,
    required this.onRemove,
  });

  final List<ProductModels> basket;
  final Function(ProductModels) onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff0CA201),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 60,
            width: 190,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: basket.length,
              itemBuilder: (context, index) {
                final product = basket[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Image.asset(
                          product.image,
                          width: 28,
                          height: 28,
                        ),
                      ),
                      Positioned(
                        top: -4,
                        right: -4,
                        child: GestureDetector(
                          onTap: () => onRemove(product),
                          child: Container(
                            height: 18,
                            width: 18,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.close,
                              size: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 13),
            child: const VerticalDivider(color: Colors.white, thickness: 1),
          ),
          const SizedBox(width: 8),
          const Text(
            'View Basket',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 10),
          Badge(
            label: Text(
              basket.length.toString(),
              style: const TextStyle(color: Colors.white,fontSize: 12),
            ),
            largeSize:15,
            child: Image.asset('assets/icons/icon1.png', color: Colors.white)),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

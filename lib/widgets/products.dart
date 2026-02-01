// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:fruitapp/models/gategory_models.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  ProductItem({
    super.key,
    required this.onAdd,
    required this.basket,
  });

  final Function(ProductModels) onAdd;
  final List<ProductModels> basket;

  final List<ProductModels> products = [
    ProductModels(
      name: 'Banana',
      image: 'assets/fruits/Banana.png',
      price: '\$3.99',
      rate: '4.8',
      ratecount: '(287)',
    ),
    ProductModels(
      name: 'Pepper',
      image: 'assets/fruits/Pepper.png',
      price: '\$2.99',
      rate: '4.8',
      ratecount: '(287)',
    ),
    ProductModels(
      name: 'Orange',
      image: 'assets/fruits/Orange.png',
      price: '\$3.99',
      rate: '4.8',
      ratecount: '(287)',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: 260,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            final bool isSelected = basket.contains(product);
      
            return Card(
              margin: const EdgeInsets.only(right: 12),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: SizedBox(
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          height: 147,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(product.image),
                        ),
                        Positioned(
                          bottom: 13,
                          right: 13,
                          child: GestureDetector(
                            onTap: () => onAdd(product),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: isSelected
                                  ? Colors.red
                                  : Colors.white,
                              child: Icon(
                                isSelected ? Icons.remove : Icons.add,
                                size: 20,
                                color: isSelected
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/star.png',
                                width: 16,
                                height: 16,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                product.rate,
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                product.ratecount,
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Text(
                            product.price,
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

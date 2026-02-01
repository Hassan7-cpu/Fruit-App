class CategoryModels {
  String name;
  String image;
  CategoryModels({required this.name, required this.image});
}

class ProductModels {
  String name;
  String image;
  String price;
  String rate;
  String ratecount;

  ProductModels({
    required this.name,
    required this.image,
    required this.price,
    required this.rate,
    required this.ratecount,
  });
}

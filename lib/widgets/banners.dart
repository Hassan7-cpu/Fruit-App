import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
   Banners({super.key});
final List itmes=[
'assets/sliders/Slider 1 .png',
'assets/sliders/Slider 2.png',
'assets/sliders/Slider 3.png',
];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
  itemCount: itmes.length,
  itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
    Image.asset(itmes[index]), 
    options: CarouselOptions(
      height: 222,
      aspectRatio:1,
      autoPlay: true,
      enableInfiniteScroll: false,
      viewportFraction: 0.8,
       autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
    ),
);
  }
}
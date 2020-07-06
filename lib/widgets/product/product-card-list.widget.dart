import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping/widgets/product/product-card.widget.dart';

class ProductCardList extends StatelessWidget {
  final Axis scrollDirection;

  ProductCardList({@required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: this.scrollDirection,
        children: <Widget>[
          ProductCard(
            title: "BeoPlay Speaker",
            description: "Bang and Olufsen",
            price: 755,
            image: "assets/product-1.png",
          ),
          ProductCard(
            title: "Leather Wristwatch",
            description: "Tag Heuer",
            price: 450,
            image: "assets/product-2.png",
          ),
          ProductCard(
            title: "Smart Bluetooth Speaker",
            description: "Google Inc.",
            price: 900,
            image: "assets/product-3.png",
          ),
          ProductCard(
            title: "Smart Luggage",
            description: "Smart Inc.",
            price: 100,
            image: "assets/product-4.png",
          ),
          ProductCard(
            title: "Smartphone Case",
            description: "Samsung",
            price: 99,
            image: "assets/product-5.png",
          ),
        ],
      ),
    );
  }
}

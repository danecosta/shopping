import 'package:flutter/material.dart';
import 'package:shopping/widgets/cart/product-cart.widget.dart';

class ProductCartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ProductCart(
            title: "BeoPlay Speaker",
            price: 755,
            image: "assets/product-1.png",
          ),
          ProductCart(
            title: "Leather Wristwatch",
            price: 450,
            image: "assets/product-2.png",
          ),
          ProductCart(
            title: "Smart Bluetooth Speaker",
            price: 900,
            image: "assets/product-3.png",
          ),
          ProductCart(
            title: "Smart Luggage",
            price: 100,
            image: "assets/product-4.png",
          ),
          ProductCart(
            title: "Smartphone Case",
            price: 99,
            image: "assets/product-5.png",
          ),
        ],
      ),
    );
  }
}

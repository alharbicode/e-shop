import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(product["image"], height: 120, fit: BoxFit.cover),
          Text(product["name"], style: TextStyle(fontSize: 16)),
          Text("\$${product["price"]}",
              style: TextStyle(fontSize: 14, color: Colors.green)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import 'cart_page.dart';
import 'product_details.dart';



class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {"name": "قميص رجالي", "price": 50, "image": "assets/shirt1.jpg", "category": "رجالي"},
    {"name": "فستان نسائي", "price": 80, "image": "assets/dress1.jpg", "category": "نسائي"},
    {"name": "حذاء أطفال", "price": 30, "image": "assets/shoes1.jpg", "category": "أطفال"},
    {"name": "جاكيت رجالي", "price": 120, "image": "assets/jacket1.jpg", "category": "رجالي"},
    {"name": "تنورة نسائية", "price": 60, "image": "assets/skirt1.jpg", "category": "نسائي"},
    {"name": "حذاء رجالي", "price": 90, "image": "assets/shoes2.jpg", "category": "رجالي"},
    {"name": "بلوزة نسائية", "price": 70, "image": "assets/blouse1.jpg", "category": "نسائي"},
    {"name": "جوارب أطفال", "price": 20, "image": "assets/socks1.jpg", "category": "أطفال"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("المتجر الإلكتروني"),
        backgroundColor: Colors.blue, // لون أزرق
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsPage(product: products[index]),
                ),
              );
            },
            child: ProductCard(product: products[index]),
          );
        },
      ),
    );
  }
}
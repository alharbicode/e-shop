import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "name": "بدلة رجالي",
      "price": 50,
      "image": "assets/images/1.jpg",
      "description": "بدلة زفاف فرسية",
    },
      {
      "name": "غلاف ايفون 11",
      "price": 80,
      "image": "assets/images/6.jpg",
      "description": "احمي حاتف بواسطة الغلاف الجميل",
    },
    {
      "name": "فستان نسائي",
      "price": 80,
      "image": "assets/images/3.jpg",
      "description": "فستان نسائي بتصميم عصري.",
    },
    {
      "name": "قميص رجالي",
      "price": 50,
      "image": "assets/images/2.jpg",
      "description": "قميص رجالي أنيق من القطن.",
    },
    {
      "name": "اطفال سروال",
      "price": 40,
      "image": "assets/images/4.jpg",
      "description": "سروال مناسب لجيع الاطفال .",
    },
    {
      "name": "حذاء",
      "price": 50,
      "image": "assets/images/5.jpg",
      "description": "حذاء ايطالي انيق",
    },
  
    // إضافة المزيد من المنتجات هنا
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "المتجر الإلكتروني",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // TODO: تنفيذ وظيفة البحث
            },
          ),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'منتجاتنا المميزة',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7, // تعديل نسبة العرض إلى الارتفاع
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}


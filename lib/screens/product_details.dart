import 'package:flutter/material.dart';
import '../services/cart_service.dart';
import 'cart_page.dart';

class ProductDetailsPage extends StatefulWidget {
  final Map<String, dynamic> product;

  ProductDetailsPage({required this.product});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int quantity = 1;

  void addToCart() {
    // إضافة المنتج إلى السلة
    CartService.addToCart({
      "name": widget.product["name"],
      "price": widget.product["price"],
      "image": widget.product["image"],
      "quantity": quantity,
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("تمت إضافة المنتج إلى السلة")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تفاصيل المنتج"),
        backgroundColor: Colors.blue, // لون أزرق
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.product["image"], height: 300, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.product["name"], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(widget.product["description"], style: TextStyle(fontSize: 16)),
                  SizedBox(height: 16),
                  Text("\$${widget.product["price"]}", style: TextStyle(fontSize: 20, color: Colors.green)),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          if (quantity > 1) {
                            setState(() {
                              quantity--;
                            });
                          }
                        },
                      ),
                      Text("$quantity", style: TextStyle(fontSize: 18)),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: addToCart,
                    child: Text("إضافة إلى السلة"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
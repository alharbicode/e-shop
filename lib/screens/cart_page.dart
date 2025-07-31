import 'package:flutter/material.dart';
import '../services/cart_service.dart';
import 'checkout_page.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Map<String, dynamic>> cartItems = [];

  @override
  void initState() {
    super.initState();
    loadCartItems();
  }

  void loadCartItems() async {
    cartItems = await CartService.getCart();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("السلة"),
        backgroundColor: Colors.blue, // لون أزرق
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(cartItems[index]["image"], width: 50, height: 50, fit: BoxFit.cover),
            title: Text(cartItems[index]["name"]),
            subtitle: Text("الكمية: ${cartItems[index]["quantity"]}"),
            trailing: Text("\$${cartItems[index]["price"] * cartItems[index]["quantity"]}"),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CheckoutPage()),
            );
          },
          child: Text("إتمام الطلب"),
        ),
      ),
    );
  }
}
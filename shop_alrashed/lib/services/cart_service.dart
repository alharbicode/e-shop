import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class CartService {
  static Future<void> addToCart(Map<String, dynamic> product) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<Map<String, dynamic>> cartItems = await getCart();
    cartItems.add(product);
    prefs.setString('cart', jsonEncode(cartItems));
  }

  static Future<List<Map<String, dynamic>>> getCart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? cartString = prefs.getString('cart');
    if (cartString != null) {
      return List<Map<String, dynamic>>.from(jsonDecode(cartString));
    }
    return [];
  }
}
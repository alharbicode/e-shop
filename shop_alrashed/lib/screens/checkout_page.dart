import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade50, Colors.teal.shade100],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.teal,
                        child: Icon(Icons.shopping_bag, color: Colors.white),
                      ),
                      SizedBox(width: 12),
                      Text(
                        "إتمام الطلب",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal.shade900,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 28),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "معلومات التوصيل",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.shade800),
                          ),
                          SizedBox(height: 18),
                          buildTextField("الاسم", Icons.person),
                          SizedBox(height: 14),
                          buildTextField("العنوان", Icons.home),
                          SizedBox(height: 14),
                          buildTextField("الهاتف", Icons.phone),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 28),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ملخص الطلب",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.shade800),
                          ),
                          SizedBox(height: 18),
                          buildOrderSummaryItem(
                              "بدلة رجالي", 1, 50, Icons.male),
                          buildOrderSummaryItem(
                              "فستان نسائي", 2, 80, Icons.female),
                          Divider(thickness: 1.2),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "الإجمالي",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal.shade900),
                              ),
                              Text(
                                "210 ريال",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 36),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('تم تأكيد الطلب بنجاح!')),
                        );
                      },
                      icon: Icon(Icons.check_circle, color: Colors.white),
                      label: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          "تأكيد الطلب",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal.shade700,
                        elevation: 8,
                        shadowColor: Colors.teal,
                        padding:
                            EdgeInsets.symmetric(vertical: 18, horizontal: 36),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, IconData icon) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Container(
          decoration: BoxDecoration(
            color: Colors.teal.shade50,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(8),
          child: Icon(icon, color: Colors.teal),
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.teal, width: 2),
        ),
      ),
    );
  }

  Widget buildOrderSummaryItem(
      String name, int quantity, double price, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.teal.shade100,
            child: Icon(icon, color: Colors.teal.shade700),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ),
          Text("$quantity x ${price.toStringAsFixed(2)} ريال",
              style: TextStyle(fontSize: 16, color: Colors.teal.shade900)),
        ],
      ),
    );
  }
}

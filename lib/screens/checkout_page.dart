import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("إتمام الطلب"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(labelText: "الاسم")),
            TextFormField(decoration: InputDecoration(labelText: "العنوان")),
            TextFormField(decoration: InputDecoration(labelText: "الهاتف")),
            SizedBox(height: 20),
            Text("ملخص الطلب", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ListTile(
              title: Text("الإجمالي"),
              trailing: Text("\$130"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("تأكيد الطلب"),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تسجيل الدخول"),
        backgroundColor: Colors.blue, // لون أزرق
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(decoration: InputDecoration(labelText: "البريد الإلكتروني")),
            TextFormField(decoration: InputDecoration(labelText: "كلمة المرور"), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text("تسجيل الدخول"),
            ),
            TextButton(
              onPressed: () {
                // الانتقال إلى صفحة إنشاء حساب
              },
              child: Text("إنشاء حساب جديد"),
            ),
            TextButton(
              onPressed: () {
                // الانتقال إلى صفحة نسيت كلمة المرور
              },
              child: Text("نسيت كلمة المرور؟"),
            ),
          ],
        ),
      ),
    );
  }
}
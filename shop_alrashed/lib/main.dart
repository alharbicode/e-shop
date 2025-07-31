import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'المتجر الإلكتروني',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Lato', // استخدام خط من Google Fonts
      ),
      home: SplashScreen(),
    );
  }
}

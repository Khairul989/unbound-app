import 'package:flutter/material.dart';
import 'package:unbound/screens/products/productPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unbound',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Athelas',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductPage(),
    );
  }
}

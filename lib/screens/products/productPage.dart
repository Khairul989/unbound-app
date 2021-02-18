import 'package:flutter/material.dart';
import 'package:unbound/screens/products/product.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: buildAppBar(s),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Product(),
            Container(
              child: Column(
                children: [
                  Container(
                    height: s.height * 0.5,
                    width: s.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.width * 0.05),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              "Product Details",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.05,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(Size s) => AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "The Tiffin Company",
          style: TextStyle(color: Colors.brown[300], fontSize: 30),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.brown[300],
          ),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: s.width * 0.02),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: Colors.brown[300],
              ),
            ),
          )
        ],
      );
}

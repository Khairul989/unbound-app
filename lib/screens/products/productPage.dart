import 'package:flutter/material.dart';
import 'package:unbound/screens/products/product.dart';
import 'package:unbound/screens/products/product_detail.dart';
import 'package:unbound/screens/products/userReview.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: buildAppBar(s),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: s.width,
              height: s.height * 0.80,
              child: ListView(
                children: [
                  SizedBox(
                    height: s.height * 0.05,
                  ),
                  Product(),
                  SizedBox(
                    height: s.height * 0.02,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(bottom: 20, left: s.width * 0.03),
                          width: s.width * 0.9,
                          child: Text(
                            "Product Details",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        ProductDetail(),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(bottom: 20, left: s.width * 0.03),
                          width: s.width * 0.9,
                          child: Text(
                            "User Reviews",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        UserReivew(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: s.height * 0.12,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Container(
                    width: s.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "SubTotal:",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.brown),
                              ),
                              Text(
                                "RM75.00",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.brown),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: s.width * 0.45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: s.width * 0.3,
                          decoration: BoxDecoration(color: Colors.brown),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Buy Now",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
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

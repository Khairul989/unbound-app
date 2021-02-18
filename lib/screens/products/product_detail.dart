import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  buildCollapsed1(Size s) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Stock",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "3",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Brand",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Flexible(
                      child: Container(
                        width: s.width * 0.4,
                        child: Text(
                          "The Tiffin Company",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Warranty Type",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Flexible(
                      child: Container(
                        width: s.width * 0.4,
                        child: Text(
                          "No Warranty",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Ships From",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Flexible(
                      child: Container(
                        width: s.width * 0.4,
                        child: Text(
                          "Kuala Lumpur",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]);
  }

  buildExpanded1(Size s) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Stock",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "3",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Brand",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Flexible(
                      child: Container(
                        width: s.width * 0.4,
                        child: Text(
                          "The Tiffin Company",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Warranty Type",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Flexible(
                      child: Container(
                        width: s.width * 0.4,
                        child: Text(
                          "No Warranty",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Ships From",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Flexible(
                      child: Container(
                        width: s.width * 0.4,
                        child: Text(
                          "Kuala Lumpur",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Price",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Flexible(
                      child: Container(
                        width: s.width * 0.4,
                        child: Text(
                          "RM12.50",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      // height: s.height * 0.4,
      width: s.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          ExpandableNotifier(
            child: ScrollOnExpand(
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expandable(
                      collapsed: buildCollapsed1(s),
                      expanded: buildExpanded1(s),
                    ),
                    Divider(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Builder(
                          builder: (context) {
                            var controller = ExpandableController.of(context);
                            return FlatButton(
                              child: Text(
                                controller.expanded ? "See Less" : "See More",
                                style: TextStyle(
                                    color: Colors.brown, fontSize: 18),
                              ),
                              onPressed: () {
                                controller.toggle();
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: s.height * 0.02,
          ),
        ],
      ),
    );
  }
}

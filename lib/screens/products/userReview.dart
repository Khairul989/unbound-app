import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class UserReivew extends StatefulWidget {
  @override
  _UserReivewState createState() => _UserReivewState();
}

class _UserReivewState extends State<UserReivew> {
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
                        width: s.width * 0.1,
                        child: CircleAvatar(
                          child: Icon(Icons.person),
                        )),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Username",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: s.width * 0.13),
                  child: Container(
                    width: s.width,
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                              "Wow I love how fast the seller ship my product. Good job"),
                        ),
                      ],
                    ),
                  ),
                )
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
                        width: s.width * 0.1,
                        child: CircleAvatar(
                          child: Icon(Icons.person),
                        )),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Username",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: s.width * 0.13),
                  child: Container(
                    width: s.width,
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                              "Wow I love how fast the seller ship my product. Good job"),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                        width: s.width * 0.1,
                        child: CircleAvatar(
                          child: Icon(Icons.person),
                        )),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Username 1",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: s.width * 0.13),
                  child: Container(
                    width: s.width,
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                              "Wow I love how fast the seller ship my product. Good job"),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                        width: s.width * 0.1,
                        child: CircleAvatar(
                          child: Icon(Icons.person),
                        )),
                    SizedBox(
                      width: s.width * 0.03,
                    ),
                    Container(
                      width: s.width * 0.4,
                      child: Text(
                        "Username 3",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: s.width * 0.13),
                  child: Container(
                    width: s.width,
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                              "Wow I love how fast the seller ship my product. Good job"),
                        ),
                      ],
                    ),
                  ),
                )
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

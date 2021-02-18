import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int photoIndex = 0;

  int quantity = 1;

  bool isSelected = true;

  List<String> photos = [
    'assets/images/m4.jpg',
    'assets/images/m2.jpg',
    'assets/images/m3.jpg',
    'assets/images/m1.jpg'
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      height: s.height * 1.12,
      width: s.width,
      child: Column(
        children: [
          SizedBox(
            height: s.height * 0.03,
          ),
          Expanded(
            child: Container(
              height: s.height,
              width: s.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    height: s.height * 0.3,
                    width: s.width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                        image: DecorationImage(
                            image: AssetImage(photos[photoIndex]),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: s.height * 0.05,
                    child: SelectedPhoto(
                        numberOfDots: photos.length, photoIndex: photoIndex),
                  ),
                  Container(
                    height: s.height * 0.05,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.width * 0.04),
                      child: Row(
                        children: [
                          FlatButton(
                            onPressed: () {},
                            child: Text('Burger',
                                style: TextStyle(color: Colors.brown)),
                            textColor: Colors.brown[100],
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.brown,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          SizedBox(width: s.width * 0.03),
                          FlatButton(
                            onPressed: () {},
                            child: Text('Food',
                                style: TextStyle(color: Colors.brown)),
                            textColor: Colors.brown[100],
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.brown,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          SizedBox(width: s.width * 0.03),
                          FlatButton(
                            onPressed: () {},
                            child: Text('Hungry',
                                style: TextStyle(color: Colors.brown)),
                            textColor: Colors.brown[100],
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.brown,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          SizedBox(width: s.width * 0.03),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: s.height * 0.05,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Burger Double Beef",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: s.height * 0.05,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "RM25.00",
                            style: TextStyle(fontSize: 25, color: Colors.brown),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: s.height * 0.1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetuer adipiscing, sed diam nonummy nibh euismod tincidunt ut laoreet dolore.",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: s.width * 0.8,
                    child: Divider(
                      color: Colors.grey[900],
                      height: 2,
                    ),
                  ),
                  Container(
                    height: s.height * 0.05,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Color",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.width * 0.05),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: ColorDot(
                              isSelected: true,
                              color: Colors.pink[100],
                            ),
                          ),
                          SizedBox(
                            width: s.width * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: ColorDot(
                              color: Colors.yellow[200],
                            ),
                          ),
                          SizedBox(
                            width: s.width * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: ColorDot(
                              color: Colors.green[200],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: s.height * 0.05,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Size",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.width * 0.05),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: ColorBox(
                              text: "S",
                              isSelected: true,
                            ),
                          ),
                          SizedBox(
                            width: s.width * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: ColorBox(
                              text: "M",
                            ),
                          ),
                          SizedBox(
                            width: s.width * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: ColorBox(
                              text: "L",
                            ),
                          ),
                          SizedBox(
                            width: s.width * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: ColorBox(
                              text: "XL",
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: s.height * 0.05,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Quantity",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: s.width * 0.05),
                        child: Container(
                          height: s.height * 0.05,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.brown)),
                                child: Row(
                                  children: [
                                    FlatButton(
                                      onPressed: () {
                                        setState(() {
                                          if (quantity < 2) {
                                            quantity = 1;
                                          } else {
                                            quantity--;
                                          }
                                        });
                                      },
                                      child: Icon(Icons.remove),
                                    ),
                                    Text(
                                      quantity.toString(),
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        setState(() {
                                          quantity++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  Container(
                    height: s.height * 0.05,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Shipping",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: s.height * 0.06,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: s.width * 0.05),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.brown)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: s.width * 0.02),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isSelected = !isSelected;
                                        });
                                      },
                                      child: ShippingCheck(
                                        isSelected: isSelected,
                                        color: Colors.brown,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Delivery"),
                                        Text("+ RM12.00 (West Malaysia)")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.brown)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: s.width * 0.02),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isSelected = !isSelected;
                                        });
                                      },
                                      child: ShippingCheck(
                                        isSelected: isSelected ? false : true,
                                        color: Colors.brown,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Pickup"),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: s.height * 0.05,
          ),
        ],
      ),
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return new Container(
        child: new Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
            color: Colors.brown[200], borderRadius: BorderRadius.circular(4.0)),
      ),
    ));
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
              ]),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }

    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin:
      //     EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          shape: BoxShape.rectangle,
          color: color,
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  // final Color color;
  final bool isSelected;
  final String text;
  const ColorBox({
    Key key,
    // this.color,
    this.isSelected = false,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin:
      //     EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected ? Colors.brown : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: isSelected ? Colors.white : Colors.brown),
        )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          shape: BoxShape.rectangle,
          color: isSelected ? Colors.brown : Colors.white,
          border: Border.all(
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}

class ShippingCheck extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ShippingCheck({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin:
      //     EdgeInsets.only(top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(1),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: color,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          shape: BoxShape.rectangle,
          color: isSelected ? color : Colors.white,
        ),
      ),
    );
  }
}

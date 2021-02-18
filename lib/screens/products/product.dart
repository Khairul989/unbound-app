import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List<String> photos = [
  'assets/images/m4.jpg',
  'assets/images/m2.jpg',
  'assets/images/m3.jpg',
  'assets/images/m1.jpg'
];

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int photoIndex = 0;
  int quantity = 1;
  bool isSelected = true;
  bool isSelectedSizeS = true;
  bool isSelectedSizeM = false;
  bool isSelectedSizeL = false;
  bool isSelectedSizeXL = false;

  bool color1 = true;
  bool color2 = false;
  bool color3 = false;

  final List<Widget> imageSliders = photos
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      height: s.height * 1.08,
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
                    margin: EdgeInsets.only(top: s.height * 0.05),
                    width: s.width * 0.9,
                    child: CarouselSlider(
                      items: imageSliders,
                      options: CarouselOptions(
                          autoPlay: false,
                          enlargeCenterPage: false,
                          aspectRatio: 2.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              photoIndex = index;
                            });
                          }),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: photos.map((url) {
                      int index = photos.indexOf(url);
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: photoIndex == index
                              ? Color.fromRGBO(0, 0, 0, 0.9)
                              : Color.fromRGBO(0, 0, 0, 0.4),
                        ),
                      );
                    }).toList(),
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
                    margin: EdgeInsets.only(bottom: 10),
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
                            onTap: () {
                              setState(() {
                                color1 = true;
                                color2 = false;
                                color3 = false;
                              });
                            },
                            child: ColorDot(
                              isSelected: color1,
                              color: Colors.pink[100],
                            ),
                          ),
                          SizedBox(
                            width: s.width * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                color1 = false;
                                color2 = true;
                                color3 = false;
                              });
                            },
                            child: ColorDot(
                              isSelected: color2,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            width: s.width * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                color1 = false;
                                color2 = false;
                                color3 = true;
                              });
                            },
                            child: ColorDot(
                              isSelected: color3,
                              color: Colors.green,
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
                            onTap: () {
                              setState(() {
                                isSelectedSizeS = true;
                                isSelectedSizeM = false;
                                isSelectedSizeL = false;
                                isSelectedSizeXL = false;
                              });
                            },
                            child: ColorBox(
                              text: "S",
                              isSelected: isSelectedSizeS,
                            ),
                          ),
                          SizedBox(
                            width: s.width * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelectedSizeS = false;
                                isSelectedSizeM = true;
                                isSelectedSizeL = false;
                                isSelectedSizeXL = false;
                              });
                            },
                            child: ColorBox(
                              isSelected: isSelectedSizeM,
                              text: "M",
                            ),
                          ),
                          SizedBox(
                            width: s.width * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelectedSizeS = false;
                                isSelectedSizeM = false;
                                isSelectedSizeL = true;
                                isSelectedSizeXL = false;
                              });
                            },
                            child: ColorBox(
                              isSelected: isSelectedSizeL,
                              text: "L",
                            ),
                          ),
                          SizedBox(
                            width: s.width * 0.02,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelectedSizeS = false;
                                isSelectedSizeM = false;
                                isSelectedSizeL = false;
                                isSelectedSizeXL = true;
                              });
                            },
                            child: ColorBox(
                              isSelected: isSelectedSizeXL,
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
                                        Text("Delivery + RM12.00"),
                                        Text("(West Malaysia)")
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

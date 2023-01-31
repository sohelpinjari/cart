import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class add_cart extends StatefulWidget {
  const add_cart({Key? key}) : super(key: key);

  @override
  State<add_cart> createState() => _add_cartState();
}

class _add_cartState extends State<add_cart> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        6,
        (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 280,
                child: Center(
                    child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.indigo),
                )),
              ),
            ));
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 5.h,
                  ),
                ),
              ),
              SizedBox(
                width: 90,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      "X",
                      style: TextStyle(
                          // fontFamily: "roboto",
                          fontSize: 5.h,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3e45aa)),
                    ),
                    Text(
                      "E",
                      style: TextStyle(
                          // fontFamily: "roboto",
                          fontSize: 5.h,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffa1dbf5)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 90,
              ),
              Container(
                child: Icon(
                  Icons.favorite_sharp,
                  color: Colors.white,
                  size: 3.h,
                ),
                decoration: BoxDecoration(
                  color: Color(0xfff75058),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xfff75058),
                      spreadRadius: 10,
                      // blurRadius: 2,
                      // offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 1.5.h),
          Container(
            alignment: Alignment.center,
            height: 4.5.h,
            width: 15.w,
            child: Text(
              "30%",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            decoration: BoxDecoration(
                color: Color(0xffa1dbf5),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          SizedBox(
            height: 1.h,
          ),
          Stack(children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xfffeefe6),
              radius: 15.4.h,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15.h,
                child: CircleAvatar(
                  backgroundColor: Color(0xfffeefe6),
                  radius: 12.4.h,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 12.h,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/download.jpg',
                      ),
                      radius: 10.h,
                    ),
                  ),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 1.h,
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 5,
            axisDirection: Axis.horizontal,
            effect: SlideEffect(
                spacing: 8.0,
                radius: 15.0,
                dotWidth: 15.0,
                dotHeight: 16.0,
                paintStyle: PaintingStyle.fill,
                strokeWidth: 1.5,
                dotColor: Color(0xffdcecf3),
                activeDotColor: Color(0xffa1dbf5)),
          ),
          SizedBox(
            height: 3.h,
          ),
          Stack(
            children: <Widget>[
              Container(


                height: 40.h,
                width: 50.h,
                child: Padding(
                  padding: EdgeInsets.all(2.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            "Nike Air Max 200",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff494f86)),
                          ),
                          SizedBox(
                            width: 5.h,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xfffdd446),
                            size: 35,
                          ),
                          Text(
                            "(4.5)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xff9698ac)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Built for natural motion, the nike ",
                            style: TextStyle(
                                fontSize: 2.2.h, color: Color(0xff8589ae)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 1.5.h,
                            width: 1.5.h,
                            child: Text(
                              "R",
                              style: TextStyle(
                                  fontSize: 1.2.h, color: Color(0xff8589ae)),
                            ),
                            decoration: BoxDecoration(
                                // color: Color(0xffa1dbf5),
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          Container(
                            child: Text(
                              " Flex shoes ",
                              style: TextStyle(
                                  fontSize: 2.2.h, color: Color(0xff8589ae)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text("Size:",
                                style: TextStyle(fontSize: 2.5.h)),
                          ),
                          SizedBox(
                            width: 1.h,
                          ),
                          Container(
                              padding: EdgeInsets.all(9),
                              alignment: Alignment.center,
                              height: 6.5.h,
                              width: 11.5.h,
                              child: Text(
                                "US 6",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 2.5.h),
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xffa1dbf5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          Container(
                            child: Text(
                              "      US 7      US 8      US 9",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 2.5.h),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                //Container
                // Container(
                //   width: 250,
                //   height: 250,
                //   color: Colors.black,
                // ), //Container
                // Container(
                //   height: 200,
                //   width: 200,
                //   color: Colors.purple,
                // ), //Container
    decoration: BoxDecoration(
    color: Color(0xfff7f7f7),
    borderRadius:
    BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),

              ),

            ], //<Widget>[]
          ),
        ],
      ),
    ));
  }
}

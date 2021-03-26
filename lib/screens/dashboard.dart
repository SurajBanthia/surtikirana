import 'dart:math';

import 'package:flutter/material.dart';
import 'package:surtikirana/app_router.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  List reProducts = [
    {
      'itemname': 'Pineapple',
      'price': 'Tag Price',
      'amt': '₹6.50',
      'img': 'assets/images/pieapple.png',
    },
    {
      'itemname': 'Pineapple',
      'price': 'Tag Price',
      'amt': '₹6.50',
      'img': 'assets/images/pieapple.png',
    },
    {
      'itemname': 'Pineapple',
      'price': 'Tag Price',
      'amt': '₹6.50',
      'img': 'assets/images/pieapple.png',
    },
    {
      'itemname': 'Pineapple',
      'price': 'Tag Price',
      'amt': '₹6.50',
      'img': 'assets/images/pieapple.png',
    },
    {
      'itemname': 'Pineapple',
      'price': 'Tag Price',
      'amt': '₹6.50',
      'img': 'assets/images/pieapple.png',
    },
    {
      'itemname': 'Pineapple',
      'price': 'Tag Price',
      'amt': '₹6.50',
      'img': 'assets/images/pieapple.png',
    },
    {
      'itemname': 'Pineapple',
      'price': 'Tag Price',
      'amt': '₹6.50',
      'img': 'assets/images/pieapple.png',
    },
    {
      'itemname': 'Pineapple',
      'price': 'Tag Price',
      'amt': '₹6.50',
      'img': 'assets/images/pieapple.png',
    },
    {
      'itemname': 'Pineapple',
      'price': 'Tag Price',
      'amt': '₹6.50',
      'img': 'assets/images/pieapple.png',
    },
    {
      'itemname': 'Pineapple',
      'price': 'Tag Price',
      'amt': '₹6.50',
      'img': 'assets/images/pieapple.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List colors = [Colors.red, Colors.green, Colors.yellow];

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Colors.black87,
        ),
        title: Center(
          child: Text(
            "Popular Pack",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRouter.profile,);
            },
            child: CircleAvatar(
              radius: 14,
              backgroundColor: Colors.lightBlue[100],
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 18,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  controller: new ScrollController(keepScrollOffset: false),
                  childAspectRatio: (itemWidth/ itemHeight),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: reProducts.map((dynamic value)
                        {return Container(
                          margin: EdgeInsets.all(4),
                          //height: MediaQuery.of(context).size.height,
                          //width: MediaQuery.of(context).size.width,
                          child: Card(
                            color: colors[
                            Random().nextInt(colors.length)],
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8,top: 8,bottom: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        value['itemname'],
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right:8.0),
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.blue,
                                          size: 22,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Text(
                                    value['price'],
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    value['amt'],
                                    style: TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(left:22),
                                        child: Image.asset(
                                          value['img'],
                                          height: 120,
                                          width: 73,
                                        ),
                                      ),
                                      //SizedBox(width: 10,),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          padding: const EdgeInsets.only(top: 60),
                                          child: Image.asset("assets/images/cart.png",
                                            width: 45,),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                        }
                ).toList(),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

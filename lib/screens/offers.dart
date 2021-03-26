import 'dart:math';

import 'package:flutter/material.dart';
import 'package:surtikirana/app_router.dart';
import 'package:surtikirana/widget/custome_button.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  List offers = [
    {
      'itemname': 'Black Coffee',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '₹120',
    },
    {
      'itemname': 'Tomato',
      'country': 'Bangaldeshi',
      'discount': 'Discount',
      'amt': '₹12',
    },
    {
      'itemname': 'Sunflower Oil',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '₹10',
    },
    {
      'itemname': 'Papaya',
      'country': 'Bangaldeshi',
      'discount': 'Discount',
      'amt': '₹70',
    },
    {
      'itemname': 'Orange',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '₹120',
    },
    {
      'itemname': 'Carrot',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '₹30',
    },
    {
      'itemname': 'Black Coffee',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '₹120',
    },
    {
      'itemname': 'Tomato',
      'country': 'Bangaldeshi',
      'discount': 'Discount',
      'amt': '₹12',
    },
    {
      'itemname': 'Sunflower Oil',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '₹10',
    },
    {
      'itemname': 'Papaya',
      'country': 'Bangaldeshi',
      'discount': 'Discount',
      'amt': '₹70',
    },
    {
      'itemname': 'Orange',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '₹120',
    },
    {
      'itemname': 'Carrot',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '₹30',
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.9;
    final double itemWidth = size.width / 2;

    List<Color> colors = [
      Color(0xFFA24ABF),
      Color(0xFF0E1155),
      Color(0xFF137362),
      Color(0xFF495FFF),
      Color(0xFFB03157),
      Color(0xFFDB6F21)
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRouter.dashboard,
            );
          },
          child: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black87,
          ),
        ),
        title: Text(
          "Offer And Promos",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        centerTitle: true,
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
                  childAspectRatio: (itemWidth / itemHeight),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: offers.map((dynamic value) {
                    return Container(
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      //height: MediaQuery.of(context).size.height,
                      //width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: colors[Random().nextInt(colors.length)],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top:15),
                                    child: Text(
                                      value['itemname'],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    value['country'],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    value['discount'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    value['amt'],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Container(
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(right: 5),
                                child: CustomeButton(
                                  width: 100,
                                  height: 35,
                                  color: Colors.white.withOpacity(0.6),
                                  text: 'Collect',
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  padding: 0,
                                  onPress: () {
                                    //setState(() {});
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

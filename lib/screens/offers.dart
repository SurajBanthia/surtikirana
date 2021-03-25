import 'dart:math';

import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  List offer = [
    {
      'itemname': 'Black Coffee',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '@120',
    },
    {
      'itemname': 'Black Coffee',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '@120',
    },
    {
      'itemname': 'Black Coffee',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '@120',
    },
    {
      'itemname': 'Black Coffee',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '@120',
    },
    {
      'itemname': 'Black Coffee',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '@120',
    },
    {
      'itemname': 'Black Coffee',
      'country': 'Turkey',
      'discount': 'Discount',
      'amt': '@120',
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
          CircleAvatar(
            radius: 14,
            backgroundColor: Colors.lightBlue[100],
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 18,
              color: Colors.black,
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
                  childAspectRatio: (itemWidth / itemHeight),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: offer.map((dynamic value) {
                    return Container(
                      margin: EdgeInsets.all(4),
                      //height: MediaQuery.of(context).size.height,
                      //width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                        child: Container(),
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

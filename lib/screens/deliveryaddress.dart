import 'package:flutter/material.dart';
import 'package:surtikirana/app_router.dart';

class DeliveryAddress extends StatefulWidget {
  @override
  _DeliveryAddressState createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  List address = [
    {
      'address': 'Home Address',
      'add': '394210 Dindoli, Surat',
      'mob': '(+91)74050-61320)',
    },
    {
      'address': 'Home Address',
      'add': '394210 Dindoli, Surat',
      'mob': '(+91)74050-61320)',
    },
    {
      'address': 'Home Address',
      'add': '394210 Dindoli, Surat',
      'mob': '(+91)74050-61320)',
    },
    {
      'address': 'Home Address',
      'add': '394210 Dindoli, Surat',
      'mob': '(+91)74050-61320)',
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //List colors = [Colors.red, Colors.green, Colors.yellow];

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 5;
    final double itemWidth = size.width / 1;

    return Scaffold(
      backgroundColor: Colors.grey[100],
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
        title: Center(
          child: Text(
            "Delivery Address",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
      floatingActionButton: Visibility(
        child: FloatingActionButton(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRouter.address,
              );
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 29,
            ),
          ),
          backgroundColor: Colors.blue[700],
          elevation: 5,
          //splashColor: Colors.blue[700],
        ),
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          crossAxisCount: 1,
          controller: new ScrollController(keepScrollOffset: false),
          childAspectRatio: (itemWidth / itemHeight),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: address.map((dynamic value) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              elevation: 3,
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.only(left:15,top:10,right: 15,bottom:10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            value['address'],
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.edit,
                              color: Colors.grey,
                              size: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      value['add'],
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          value['mob'],
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.delete_rounded,
                            color: Colors.black,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    /*Row(
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
                  ),*/
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

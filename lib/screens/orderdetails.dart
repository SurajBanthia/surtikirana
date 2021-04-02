import 'package:flutter/material.dart';
import 'package:journey_path/journey_path.dart';
import 'package:journey_path/models/connected_dot.dart';
import 'package:journey_path/models/connected_line.dart';
import 'package:journey_path/models/information_card.dart';
import 'package:journey_path/models/timeline.dart';
import 'package:surtikirana/app_router.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {

  final Timeline timeline = Timeline(
    color: Colors.blue,
    thickness: 5,
  );

  final ConnectedDot connectedDot = ConnectedDot(
    number: 2,
    edgeColor: Colors.blue,
    spaceBetween: 80,
    edgeSize: 40,
    middleColorDots: Colors.white,
  );

  final ConnectedLine connectedLine = ConnectedLine(
    size: 15,
    color: Colors.grey,
  );

  final InformationCard informationCard = InformationCard(
    height: 40,
    width: 100,
    //color: Colors.blue[100],
    list: [
      InformationCardDetails(name: 'Order Confirmed', description: '12.12.2021'),
      InformationCardDetails(name: 'Order Processing', description: '13.12.2021'),
      InformationCardDetails(name: 'Order Shipped', description: '15.12.2021'),
      InformationCardDetails(name: 'Delivery', description: '18.12.2021'),
    ],
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (){
            Navigator.pushNamed(context, AppRouter.profile,);
          },
          child: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black87,
          ),
        ),
        title: Center(
          child: Text(
            "My Order Details",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
      body: JourneyPath(
        timeline: timeline,
        connectedDot: connectedDot,
        connectedLine: connectedLine,
        listInformationCard: informationCard,
      ),



      /*SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Column(
                children: [
                  Text("Order id #12345061230",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),

                ],
              ),
            )
          ],
        ),
      ),*/
    );
  }
}

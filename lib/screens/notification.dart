import 'package:flutter/material.dart';
import 'package:surtikirana/app_router.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: InkWell(
          /*onTap: () {
            Navigator.pushNamed(
              context,
              AppRouter.address,
            );
          },*/
          child: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black87,
          ),
        ),
        title: Center(
          child: Text(
            "Notification",
            style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left:15,right: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top:30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Gift Offer",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 3,),
                          Text("Gift OfferjhuifwhwuifiuwwwIUSHFUIWHDAJj",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 3,),
                          Text("Now",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Divider(thickness: 1,),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Coupon Offer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          SizedBox(height: 3,),
                          Text("Gift OfferjhuifwhwuifiuwwwIUSHFUIWHDAJhur",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 3,),
                          Text("Now",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Divider(thickness: 1,),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Congratulations",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          SizedBox(height: 3,),
                          Text("Gift OfferjhuifwhwuifiuwwwIUSHFUIWHDAJhur",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 3,),
                          Text("Now",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Divider(thickness: 1,),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Your Order Cancelled",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          SizedBox(height: 3,),
                          Text("Gift OfferjhuifwhwuifiuwwwIUSHFUIWHDAJhur",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 3,),
                          Text("Now",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Divider(thickness: 1,),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Great Winter Discount",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 3,),
                          Text("Gift OfferjhuifwhwuifiuwwwIUSHFUIWHDAJhur",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 3,),
                          Text("Now",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Divider(thickness: 1,),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("20% Off Vegetables",style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 3,),
                          Text("Gift OfferjhuifwhwuifiuwwwIUSHFUIWHDAJhur",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 3,),
                          Text("Now",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Divider(thickness: 1,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surtikirana/app_router.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 0),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/background.png",
                  width: MediaQuery.of(context).size.width,
                  height:  MediaQuery.of(context).size.height * 43 /100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                AppRouter.offers,
                              );
                            },
                            child: Icon(
                              Icons.arrow_back_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/images/batman.png",
                                width: 100,
                                height: 100,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Rajendra Prajapati",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("IS: CRJPP6437N",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14))
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 15),
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      "assets/images/batman.png",
                                      width: 45,
                                      height: 45,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("My All",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14)),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("Orders",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14)),
                                ],
                              ),
                              Column(
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      "assets/images/batman.png",
                                      width: 45,
                                      height: 45,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("Offer &",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14)),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("Promos",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14)),
                                ],
                              ),
                              Column(
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      "assets/images/batman.png",
                                      width: 45,
                                      height: 45,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("Delivery",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14)),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("Address",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 15),
                        height: 310,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top:10,bottom: 10),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:8,right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        ClipOval(
                                          child: Image.asset(
                                            "assets/images/batman.png",
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("My Profile",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 14)),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                                  ],
                                ),
                              ),
                              Divider(thickness: 1,),
                              Padding(
                                padding: const EdgeInsets.only(left:8,right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        ClipOval(
                                          child: Image.asset(
                                            "assets/images/batman.png",
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("Change Password",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 14)),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                                  ],
                                ),
                              ),
                              Divider(thickness: 1,),
                              Padding(
                                padding: const EdgeInsets.only(left:8,right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        ClipOval(
                                          child: Image.asset(
                                            "assets/images/batman.png",
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("Notification",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 14)),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                                  ],
                                ),
                              ),
                              Divider(thickness: 1,),
                              Padding(
                                padding: const EdgeInsets.only(left:8,right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        ClipOval(
                                          child: Image.asset(
                                            "assets/images/batman.png",
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("Language",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 14)),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                                  ],
                                ),
                              ),
                              Divider(thickness: 1,),
                              Padding(
                                padding: const EdgeInsets.only(left:8,right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        ClipOval(
                                          child: Image.asset(
                                            "assets/images/batman.png",
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("Logout",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 14)),
                                      ],
                                    ),
                                    Icon(Icons.arrow_forward_ios_outlined,size: 20,)
                                  ],
                                ),
                              ),
                              Divider(thickness: 1,),

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}

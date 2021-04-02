import 'package:flutter/material.dart';
import 'package:surtikirana/app_router.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {

  TextEditingController txtMobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRouter.address,
            );
          },
          child: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black87,
          ),
        ),
        title: Center(
          child: Text(
            "Profile",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          color: Colors.white,
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: Text("First Name",style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding:
                  EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 20),
                  child: TextFormField(
                    controller: txtMobile,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),

                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: new OutlineInputBorder(
                        //borderRadius: new BorderRadius.circular(0),
                        borderSide: new BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: Text("Last Name",style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding:
                  EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 20),
                  child: TextFormField(
                    controller: txtMobile,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),

                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: new OutlineInputBorder(
                        //borderRadius: new BorderRadius.circular(0),
                        borderSide: new BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: Text("Phone Number",style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding:
                  EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 20),
                  child: TextFormField(
                    controller: txtMobile,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),

                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: new OutlineInputBorder(
                        //borderRadius: new BorderRadius.circular(0),
                        borderSide: new BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: Text("Gender",style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding:
                  EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 20),
                  child: TextFormField(
                    controller: txtMobile,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),

                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: new OutlineInputBorder(
                        //borderRadius: new BorderRadius.circular(0),
                        borderSide: new BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: Text("Birthday",style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding:
                  EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 20),
                  child: TextFormField(
                    controller: txtMobile,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),

                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: new OutlineInputBorder(
                        //borderRadius: new BorderRadius.circular(0),
                        borderSide: new BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: Text("Password",style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding:
                  EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 20),
                  child: TextFormField(
                    controller: txtMobile,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),

                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: new OutlineInputBorder(
                        //borderRadius: new BorderRadius.circular(0),
                        borderSide: new BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  margin: EdgeInsets.only(left:10,right: 10,),
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[700],
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRouter.notification,
                      );
                    },
                    child: Center(
                      child: Text(
                        "Save Address",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Raleway',
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

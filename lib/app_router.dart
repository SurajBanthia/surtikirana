import 'package:flutter/material.dart';
import 'package:surtikirana/screens/address.dart';
import 'package:surtikirana/screens/bottommenu.dart';
import 'package:surtikirana/screens/dashboard.dart';
import 'package:surtikirana/screens/deliveryaddress.dart';
import 'package:surtikirana/screens/notification.dart';
import 'package:surtikirana/screens/offers.dart';
import 'package:surtikirana/screens/orderdetails.dart';
import 'package:surtikirana/screens/profile.dart';
import 'package:surtikirana/screens/user.dart';

class AppRouter {
  static const dashboard = '/dashboard';
  static const offers = '/offers';
  //static const bottommenu = '/bottommenu';
  static const profile = '/profile';
  static const orderdetails = '/orderdetails';
  static const deliveryaddress = '/deliveryaddress';
  static const address = '/address';
  static const user = '/user';
  static const notification = '/notification';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as dynamic;

    switch (settings.name) {
      case dashboard:
        return MaterialPageRoute(builder: (_) => DashBoard());
      case offers:
        return MaterialPageRoute(builder: (_) => Offers());
      /*case bottommenu:
        return MaterialPageRoute(builder: (_) => Bottommenu());*/
      case profile:
        return MaterialPageRoute(builder: (_) => Profile());
        case orderdetails:
        return MaterialPageRoute(builder: (_) => OrderDetails());
      case deliveryaddress:
        return MaterialPageRoute(builder: (_) => DeliveryAddress());
        case address:
        return MaterialPageRoute(builder: (_) => Address());
      case user:
        return MaterialPageRoute(builder: (_) => User());
        case notification:
        return MaterialPageRoute(builder: (_) => NotificationScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: Center(
          child: Text("Error"),
        ),
      );
    });
  }
}
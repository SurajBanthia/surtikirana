import 'package:flutter/material.dart';
import 'package:surtikirana/screens/bottommenu.dart';
import 'package:surtikirana/screens/dashboard.dart';
import 'package:surtikirana/screens/offers.dart';
import 'package:surtikirana/screens/profile.dart';

class AppRouter {
  static const dashboard = '/dashboard';
  static const offers = '/offers';
  //static const bottommenu = '/bottommenu';
  static const profile = '/profile';


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
import 'package:flutter/material.dart';
import 'package:surtikirana/screens/dashboard.dart';
import 'package:surtikirana/screens/offers.dart';

class AppRouter {
  static const dashboard = '/dashboard';
  static const offers = '/offers';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as dynamic;

    switch (settings.name) {
      case dashboard:
        return MaterialPageRoute(builder: (_) => DashBoard());
      case offers:
        return MaterialPageRoute(builder: (_) => Offers());

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
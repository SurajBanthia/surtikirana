import 'package:flutter/material.dart';
import 'package:surtikirana/app_init.dart';
import 'package:surtikirana/app_router.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Surti Kirana',
      home: AppInit(),
      // theme: appTheme,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}

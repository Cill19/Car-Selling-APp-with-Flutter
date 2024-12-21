import 'package:carselling/state_util.dart';
import 'package:carselling/core.dart';
import 'package:carselling/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:carselling/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cars Selling App',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), // Ubah halaman awal ke MainScreen
    );
  }
}

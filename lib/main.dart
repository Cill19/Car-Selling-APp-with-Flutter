import 'package:carselling/provider/product_provider.dart';
import 'package:carselling/state_util.dart';
import 'package:carselling/core.dart';
import 'package:carselling/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carselling/screens/main_screen.dart'; // Tambahkan import untuk provider

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => ProductProvider()), // Tambahkan ProductProvider
      ],
      child: MyApp(),
    ),
  );
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
      home: LoginScreen(), // Tetapkan LoginScreen sebagai halaman awal
    );
  }
}

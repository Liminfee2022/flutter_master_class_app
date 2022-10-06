import 'package:flutter/material.dart';
import 'package:flutter_master_class_app/misc/color.dart';
import 'package:flutter_master_class_app/pages/welcom_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.mainColor),
      ),
      home: WelcomePage(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:food_delivery_app/screen/homepage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Delivery App",
        home: HomePage(),
      ),
    );
  }
}

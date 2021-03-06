import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scan_code/app/routes/app_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "",
        theme: ThemeData(
          primaryColor: Colors.red,
          primarySwatch: Colors.red,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        getPages: AppPages.pages
    );
  }
}
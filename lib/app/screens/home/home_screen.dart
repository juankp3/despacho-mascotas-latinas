import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scan_code/app/routes/app_route.dart';
import 'package:qr_scan_code/app/screens/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Login')),
        body: Container(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
            child: Column(
              children: [
                SizedBox(height: 24.0),
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Ingrese un correo como abc@gmail.com')),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Ingrese s contraseña')),
                ),
                SizedBox(height: 24.0),
                GestureDetector(
                  onTap: () => {Get.offNamed(AppRoutes.CARRIER)},
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

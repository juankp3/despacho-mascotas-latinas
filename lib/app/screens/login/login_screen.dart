import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scan_code/app/screens/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
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
                  onChanged: _.onChangeEmail,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Ingrese un correo como abc@gmail.com'
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: TextField(
                    onChanged: _.onChangePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Ingrese s contraseña')
                  ),
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                onPressed: () {
                    _.auth();
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

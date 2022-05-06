import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scan_code/screens/carrier/carrier_controller.dart';

class CarrierScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CarrierController>(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Transportista')),
        body: Text('aa')
      ),
    );
  }
}

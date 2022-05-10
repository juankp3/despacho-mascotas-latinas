import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scan_code/app/screens/carrier/carrier_controller.dart';
import 'package:qr_scan_code/app/screens/carrier/widget/carrier_item.dart';

class CarrierScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CarrierController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Transportista'),
        ),
        body: Container(
          child: ListView.builder(

            itemCount: _.carriers.length,
            itemBuilder: (context, index) {
              return CarrierItem(carrier: _.carriers[index],);
            }
          ),
        )
      ),
    );
  }

}

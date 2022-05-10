import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scan_code/app/data/models/carrier_model.dart';
import 'package:qr_scan_code/app/screens/carrier/carrier_controller.dart';

class CarrierItem extends StatelessWidget {

  var carrier = new CarrierModel();
  CarrierItem({this.carrier});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CarrierController>(
      builder: (_) => ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[700],
          child: Icon(
            Icons.person_outline_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(carrier.name+ "aaa "),
        onTap: () {
          _.goDetail(carrier: carrier);
        },
      ),

    );
  }
}
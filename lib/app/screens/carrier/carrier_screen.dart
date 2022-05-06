import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scan_code/app/routes/app_route.dart';
import 'package:qr_scan_code/app/screens/carrier/carrier_controller.dart';

class CarrierScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CarrierController>(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Transportista')),
        body: Container(
          child: ListView.builder(

            itemCount: _.carriers.length,
            itemBuilder: (context, index) {
              // return Text(_.carriers[index].name);
              return CarrierItem(_.carriers[index].name);
              // return CardPokemon(pokemon: _.pokemons[index],index: index);
            }
          ),
        )
      ),
    );
  }

  Widget CarrierItem(carrier_name){
    return GestureDetector(
      // onTap: {},
      onTap: () => {Get.toNamed(AppRoutes.ORDER)},
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[700],
          child: Icon(
            Icons.person_outline_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(carrier_name),
      ),
    );
  }
}

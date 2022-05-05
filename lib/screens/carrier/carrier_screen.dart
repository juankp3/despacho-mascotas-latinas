import 'package:flutter/material.dart';

class CarrierScreen extends StatefulWidget {

  @override
  State<CarrierScreen> createState() => _CarrierScreenState();
}

class _CarrierScreenState extends State<CarrierScreen> {
  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Item 1';

    // List of items in our dropdown menu
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return Scaffold(
      appBar: AppBar(title: Text('aaa')),
      // body: Container(child: Text('aadd')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // onChanged: (String? newValue) {
              //   setState(() {
              //     dropdownvalue = newValue!;
              //     print(dropdownvalue);
              //   });
              // },
            ),
          ],
        ),
      )
    );
  }
}
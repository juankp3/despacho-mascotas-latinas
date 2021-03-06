import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:qr_scan_code/app/configs/logger.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  Logger log = getLogger("OrderScreen");
  String result = "Waiting QR Scan Text";
  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      log.i(qrResult);
      setState(() {
        result = qrResult;
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Permiso de cámara denegado";
        });
      } else {
        setState(() {
          result = "Error desconocido: $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "Presionaste el botón Atrás antes de escanear algo";
      });
    }catch(e){
      setState(() {
          result = "Error desconocido: $e";
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _scanQR,
        label: Text("Scan 2"),
        icon: Icon(Icons.camera_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text("SUPERPET"),
      ),
      body: Center(
          child: Text(
        result,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}

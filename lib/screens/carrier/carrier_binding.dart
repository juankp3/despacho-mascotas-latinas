
import 'package:get/get.dart';
import 'package:qr_scan_code/screens/carrier/carrier_controller.dart';

class CarrierBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CarrierController());
  }
}
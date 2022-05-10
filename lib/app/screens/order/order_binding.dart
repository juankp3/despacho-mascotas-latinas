
import 'package:get/get.dart';
import 'package:qr_scan_code/app/screens/order/order_controller.dart';

class OrderBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => OrderController());
  }

}
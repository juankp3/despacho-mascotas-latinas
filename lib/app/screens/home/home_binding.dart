
import 'package:get/get.dart';
import 'package:qr_scan_code/app/screens/home/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }

}
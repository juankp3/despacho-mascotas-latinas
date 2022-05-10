
import 'package:get/get.dart';
import 'package:qr_scan_code/app/screens/login/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
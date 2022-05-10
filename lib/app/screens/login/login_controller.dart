
import 'package:get/get.dart';
import 'package:qr_scan_code/app/routes/app_route.dart';

class LoginController extends GetxController{

  String _email;
  String _password;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


  void onChangeEmail(String value) => _email = value;
  void onChangePassword(String value) => _password = value;

  auth() async{
    try {
      print('email');
      print(_email);
      print('password');
      print(_password);

      Get.offNamed(AppRoutes.CARRIER);
    } catch (e) {
    }
  }



}
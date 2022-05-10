import 'package:get/route_manager.dart';
import 'package:qr_scan_code/app/screens/carrier/carrier_binding.dart';
import 'package:qr_scan_code/app/screens/carrier/carrier_screen.dart';
import 'package:qr_scan_code/app/screens/login/login_binding.dart';
import 'package:qr_scan_code/app/screens/login/login_screen.dart';
import 'package:qr_scan_code/app/screens/order/order_binding.dart';
import 'package:qr_scan_code/app/screens/order/order_screen.dart';

import 'app_route.dart';


class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding()
    ),
    GetPage(
      name: AppRoutes.CARRIER,
      page: () => CarrierScreen(),
      binding: CarrierBinding()
    ),
    GetPage(
      name: AppRoutes.ORDER,
      page: () => OrderScreen(),
      // binding: OrderBinding()
    )
  ];
}
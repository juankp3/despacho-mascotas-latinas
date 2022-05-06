import 'package:get/route_manager.dart';
import 'package:qr_scan_code/app/screens/carrier/carrier_binding.dart';
import 'package:qr_scan_code/app/screens/carrier/carrier_screen.dart';
import 'package:qr_scan_code/app/screens/home/home_binding.dart';
import 'package:qr_scan_code/app/screens/home/home_screen.dart';
import 'package:qr_scan_code/app/screens/order/order_screen.dart';

import 'app_route.dart';


class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding()
    ),
    GetPage(
      name: AppRoutes.CARRIER,
      page: () => CarrierScreen(),
      binding: CarrierBinding()
    ),
    GetPage(
      name: AppRoutes.ORDER,
      page: () => OrderScreen(),
      // binding: DetailsBinding()
    )
  ];
}
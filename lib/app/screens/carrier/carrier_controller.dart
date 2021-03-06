
import 'package:get/get.dart';
import 'package:qr_scan_code/app/data/models/carrier_model.dart';
import 'package:qr_scan_code/app/routes/app_route.dart';
import 'package:qr_scan_code/app/screens/order/order_screen.dart';

class CarrierController extends GetxController{

  List<CarrierModel> carriers = [];

  @override
  void onInit() {
    _load();
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


  goDetail({CarrierModel carrier}){
    print(carrier.id);
    Get.to(() => OrderScreen(), arguments: carrier);

    // Get.off(AppRoutes.ORDER);

  }

  _load() async {
    carriers.add(CarrierModel(id: 1, name: 'Transportista 1'));
    carriers.add(CarrierModel(id: 2, name: 'Transportista 2'));
    carriers.add(CarrierModel(id: 3, name: 'Transportista 3'));
    carriers.add(CarrierModel(id: 4, name: 'Transportista 4'));
    carriers.add(CarrierModel(id: 5, name: 'Transportista 5'));
    carriers.add(CarrierModel(id: 6, name: 'Transportista 6'));
    carriers.add(CarrierModel(id: 7, name: 'Transportista 7'));
    carriers.add(CarrierModel(id: 8, name: 'Transportista 8'));
    carriers.add(CarrierModel(id: 9, name: 'Transportista 9'));
    carriers.add(CarrierModel(id: 10, name: 'Transportista 10'));
    carriers.add(CarrierModel(id: 11, name: 'Transportista 11'));
    carriers.add(CarrierModel(id: 12, name: 'Transportista 12'));
    carriers.add(CarrierModel(id: 13, name: 'Transportista 13'));
    carriers.add(CarrierModel(id: 14, name: 'Transportista 14'));
    carriers.add(CarrierModel(id: 15, name: 'Transportista 15'));
    carriers.add(CarrierModel(id: 16, name: 'Transportista 16'));
    carriers.add(CarrierModel(id: 17, name: 'Transportista 17'));
  }
}
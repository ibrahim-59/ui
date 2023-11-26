import 'package:get/get.dart';
import 'package:ui/data/models/items_model.dart';

class ItemDetailsController extends GetxController {
  late ItemsModel itemsModel;
  @override
  void onInit() {
   itemsModel =  Get.arguments["item"];
    super.onInit();
  }
}

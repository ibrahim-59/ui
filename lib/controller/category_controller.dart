// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:ui/data/datasource/static/items_data.dart';
import 'package:ui/data/models/categories_model.dart';
import 'package:ui/data/models/items_model.dart';

class CategoryController extends GetxController {
  List<ItemsModel> data = [];
  late CategoryModel categoryModel;

  @override
  void onInit() {
    categoryModel = Get.arguments['cat'];
    data = ItemsData.data
        .where((ItemsModel) => ItemsModel.catId == categoryModel.catId)
        .toList();
    super.onInit();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/data/models/items_model.dart';

class CartController extends GetxController {
  bool isLandscape = Get.mediaQuery.orientation == Orientation.landscape;
  List<ItemsModel> items = [];
}

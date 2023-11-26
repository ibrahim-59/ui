import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/controller/cart_controller.dart';
import 'package:ui/core/constants/route_names.dart';
import 'package:ui/data/models/categories_model.dart';
import 'package:ui/data/models/items_model.dart';

class HomeScreencontroller extends GetxController {
  bool veg = false, fruit = false, lower = false, max = false;
  bool isLandscape = Get.mediaQuery.orientation == Orientation.landscape;
  CategoryModel? categoryModel;
  List<ItemsModel>? itemsData;
  goToCategoryPage() {
    // Get.toNamed(AppRoutes.categoryscreen , arguments: {"categoryModel" : Cate})
  }
  goToItemDetailsPage(ItemsModel itemsModel) {
    Get.toNamed(AppRoutes.itemdetails, arguments: {"item": itemsModel});
  }

  addToCart(ItemsModel itemsModel) {
    CartController cartController = Get.find();
    itemsData!.add(itemsModel);
    cartController.items.addAll(itemsData!);
    update();
  }

  showFilterDialog(
    BuildContext context,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return GetBuilder<HomeScreencontroller>(builder: (controller) {
          return AlertDialog(
            title: const Text('بحث بناء علي'),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CheckboxListTile(
                    title: const Text("اكبر سعر"),
                    value: max,
                    onChanged: (bool? value) {
                      max = value!;
                      print(max);
                      update();
                    },
                  ),
                  CheckboxListTile(
                    title: const Text("خضراوات"),
                    value: veg,
                    onChanged: (bool? value) {
                      veg = value!;
                      update();
                    },
                  ),
                  CheckboxListTile(
                    title: const Text("فواكه"),
                    value: fruit,
                    onChanged: (bool? value) {
                      fruit = value!;
                      update();
                    },
                  ),
                  CheckboxListTile(
                    title: const Text("أقل سعر"),
                    value: lower,
                    onChanged: (bool? value) {
                      lower = value!;
                      update();
                    },
                  ),
                ],
              ),
            ),
            actions: [
              MaterialButton(
                child: const Text('الغاء'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              MaterialButton(
                child: const Text('تأكيد'),
                onPressed: () {
                  // Apply the selected filters
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/controller/itemdetails_controller.dart';
import 'package:ui/core/constants/const.dart';
import 'package:ui/view/widgets/itemsdetails/itemdetailslanscape.dart';
import 'package:ui/view/widgets/itemsdetails/itemsdetailsnormal.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ItemDetailsController controller = Get.put(ItemDetailsController());
    return OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.landscape
            ? Scaffold(
                backgroundColor: Colors.white,
                appBar: appBar(color: Colors.white),
                body: ItemDetailsLandscape(controller: controller))
            : Scaffold(
                appBar:
                    appBar(color: Theme.of(context).scaffoldBackgroundColor),
                body: ItemDetailsNormal(controller: controller));
      },
    );
  }
}

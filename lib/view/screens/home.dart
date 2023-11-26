import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/controller/home_controller.dart';
import 'package:ui/view/widgets/custombuttomappbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());

    return GetBuilder<HomePageControllerImp>(builder: (controller) {
      return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: IndexedStack(
            index: controller.currentPage,
            children: controller.screens,
          ),
          bottomNavigationBar: OrientationBuilder(
            builder: (context, orientation) {
              return orientation == Orientation.landscape
                  ? const CustomButtomAppBar()
                  : const FittedBox(child:  CustomButtomAppBar());
            },
          ));
    });
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/controller/home_controller.dart';
import 'package:ui/view/widgets/custombuttonappbar.dart';

class CustomButtomAppBar extends StatelessWidget {
  const CustomButtomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageControllerImp>(builder: (controller) {
      return BottomAppBar(
        elevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButtonAppBar(
              icon: Icons.home_outlined,
              selectedIcon: Icons.home,
              onPressed: () {
                controller.changePage(0);
              },
              active: controller.currentPage == 0 ? true : false,
            ),
            CustomButtonAppBar(
              active: controller.currentPage == 1 ? true : false,
              icon: Icons.person_2_outlined,
              selectedIcon: Icons.person_2,
              onPressed: () {
                controller.changePage(1);
              },
            ),
            const CircleAvatar(
              radius: 22,
              child: Icon(Icons.person_2),
            ),
            CustomButtonAppBar(
              active: controller.currentPage == 2 ? true : false,
              icon: Icons.notifications_none,
              selectedIcon: Icons.notifications,
              onPressed: () {
                controller.changePage(2);
              },
            ),
            CustomButtonAppBar(
              active: controller.currentPage == 3 ? true : false,
              icon: Icons.shopping_cart_outlined,
              selectedIcon: Icons.shopping_cart,
              onPressed: () {
                controller.changePage(3);
              },
            ),
          ],
        ),
      );
    });
  }
}

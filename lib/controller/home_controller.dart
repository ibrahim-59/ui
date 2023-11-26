import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ui/view/screens/cart.dart';
import 'package:ui/view/screens/homescreen.dart';
import 'package:ui/view/screens/notifications.dart';
import 'package:ui/view/screens/profile.dart';

abstract class HomePageController extends GetxController {
  changePage(int index);
}

class HomePageControllerImp extends HomePageController {
  bool isLandscape = Get.mediaQuery.orientation == Orientation.landscape;
  int currentPage = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const NotificationsScreen(),
    const CartScreen(),
  ];
  getscreen() => screens[currentPage];
  @override
  changePage(int index) {
    update();
    currentPage = index;
    update();
  }

  @override
  void onInit() {
      print(Get.width);
    screens = [
      const HomeScreen(),
      const ProfileScreen(),
      const NotificationsScreen(),
      const CartScreen(),
    ];
    super.onInit();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/core/constants/route_names.dart';
import 'package:ui/core/services/services.dart';
import 'package:ui/data/datasource/static/onboarding_data.dart';

abstract class OnBoardingConroller extends GetxController {
  next();
  onPageGhanged(int index);
}

class OnBoardingControllerImpl extends OnBoardingConroller {
  late PageController pageController;
  MyServices myServices = Get.find();
  int currentPage = 0;
  @override
  next() async {
    currentPage++;
    update();
    if (currentPage == 3) {
      myServices.sharedPreferences.setString("step", "1");
      Get.offAllNamed(AppRoutes.auth);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      update();
    }
  }

  @override
  onPageGhanged(int index) {
    if (currentPage > onBoardingList.length) {
      currentPage = 0;
      update();
    } else {
      currentPage = index;
      update();
    }
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}

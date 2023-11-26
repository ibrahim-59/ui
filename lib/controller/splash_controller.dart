import 'package:get/get.dart';
import 'package:ui/core/constants/route_names.dart';

class SplashController extends GetxController {
  goToLoginPage() async {
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed(AppRoutes.onboarding);
    });
  }

  @override
  void onInit() {
    goToLoginPage();
    super.onInit();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/core/constants/assets_manager.dart';
import 'package:ui/core/constants/route_names.dart';
import 'package:ui/core/shared/appcustombutton.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Image.asset(AssetsManager.hlogo),
            ),
            const SizedBox(
              height: 40,
            ),
            AppCustomButton(
              onPressed: () {
                Get.toNamed(AppRoutes.loginscreen);
              },
              color: Colors.red,
              title: "تسجيل الدخول",
            ),
            const SizedBox(
              height: 20,
            ),
            AppCustomButton(
              onPressed: () {
                Get.toNamed(AppRoutes.registerscreen);
              },
              color: Colors.green,
              title: "انشئ حساب",
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/controller/splash_controller.dart';
import 'package:ui/core/constants/assets_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetsManager.logo,
            height: 200,
            width: double.infinity,
          ),
          const SizedBox(
            height: 8,
          ),
          const Center(
            child: CircularProgressIndicator(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

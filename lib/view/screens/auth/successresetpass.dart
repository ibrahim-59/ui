import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ui/core/constants/route_names.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.width / 3.5,
            ),
            Center(
              child: Container(
                height: Get.width / 1.7,
                width: Get.width / 1.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  border: Border.all(color: Colors.white),
                ),
                child: const Icon(
                  Ionicons.key_outline,
                  color: Colors.white,
                  size: 120,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "تم تغير كلمه المرور",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 60,
              width: 200,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.white,
                onPressed: () {
                  Get.offAllNamed(AppRoutes.loginscreen);
                },
                child: const Text(
                  "تم",
                  style: TextStyle(color: Colors.green, fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

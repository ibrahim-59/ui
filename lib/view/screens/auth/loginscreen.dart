import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/core/constants/assets_manager.dart';
import 'package:ui/core/constants/const.dart';
import 'package:ui/core/constants/route_names.dart';
import 'package:ui/core/shared/appcustombutton.dart';
import 'package:ui/view/widgets/auth/inputfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, Orientation orientation) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: authAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: orientation == Orientation.landscape
                      ? 0
                      : Get.width / 3.6,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(child: Image.asset(AssetsManager.hlogo)),
                ),
                const SizedBox(height: 15),
                const InputField(
                  title: "عنوان البريد الالكتروني",
                  icon: Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                  ),
                ),
                const InputField(
                  title: "كلمه السر",
                  icon: Icon(Icons.visibility_off_outlined),
                ),
                TextButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.forgetPass);
                    },
                    child: const Text(
                      "هل نسيت كلمه السر",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )),
                const SizedBox(height: 15),
                AppCustomButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.homePage);
                    },
                    color: Colors.green,
                    title: "تسجيل الدخول"),
                SizedBox(
                  height: orientation == Orientation.landscape
                      ? 10
                      : Get.width / 3.6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "لديك حساب بالفعل ؟ ",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton.icon(
                        onPressed: () {
                          Get.toNamed(AppRoutes.registerscreen);
                        },
                        icon: const Icon(
                          Icons.arrow_left,
                          color: Colors.black,
                        ),
                        label: const Text(
                          "تسجيل الدخول",
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

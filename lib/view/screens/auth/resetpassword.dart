import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/core/constants/const.dart';
import 'package:ui/core/constants/route_names.dart';
import 'package:ui/core/shared/appcustombutton.dart';
import 'package:ui/view/widgets/auth/inputfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: authAppBar(title: "تغير كلمه المرور", center: true),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const Center(
              child: Text(
                "أدخل كلمه المرور الجديده",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const InputField(
              title: "كلمه المرور الحاليه",
              icon: Icon(Icons.visibility_off_outlined),
            ),
            const InputField(
              title: "كلمه المرور الجديده",
              icon: Icon(Icons.visibility_off_outlined),
            ),
            const SizedBox(
              height: 20,
            ),
            AppCustomButton(
                onPressed: () {
                  Get.offAllNamed(AppRoutes.successresetpass);
                },
                color: Colors.green,
                title: "تغير"),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:ui/core/constants/const.dart';
import 'package:ui/core/constants/route_names.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: authAppBar(
        center: true,
        title: "التحقق من الرمز",
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const Text(
              "أدخل رمز التحقق هنا",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const SizedBox(
              height: 70,
            ),
            OtpTextField(
              fieldWidth: 60,
              borderRadius: BorderRadius.circular(12),
              numberOfFields: 4,
              filled: true,
              showFieldAsBox: true,
              onCodeChanged: (value) {},
              onSubmit: (value) {
                Get.offAllNamed(AppRoutes.resetpass);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "  لم يصل الكود ؟   ",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "اعاده ارسال رمز جديد",
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

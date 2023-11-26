import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/core/constants/const.dart';
import 'package:ui/core/constants/route_names.dart';
import 'package:ui/core/shared/appcustombutton.dart';
import 'package:ui/view/widgets/auth/phoneformfield.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: authAppBar(title: "تحقق من رقم الهاتف"),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: [
          const Text(
            "أدخل رقم الهاتف لارسال رساله نصيه تحتوي علي رمز التحقق",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          const SizedBox(
            height: 70,
          ),
          const PhoneFormField(),
          const SizedBox(
            height: 20,
          ),
          AppCustomButton(
              onPressed: () {
                Get.offAllNamed(AppRoutes.verifycode);
              },
              color: Colors.green,
              title: "تأكيد"),
        ]),
      ),
    );
  }
}

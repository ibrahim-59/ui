import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ui/core/constants/const.dart';
import 'package:ui/core/shared/appcustombutton.dart';
import 'package:ui/view/widgets/auth/inputfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: authAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const Text(
              "أنشاء حساب جديد",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const Text(
              "أدخل بيانتك لانشاء حساب",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const SizedBox(
              height: 25,
            ),
            const InputField(
              title: "الاسم",
            ),
            const InputField(
              title: "عنوان البريد الالكتروني",
              icon: Icon(
                Icons.check_circle_outline,
                color: Colors.green,
              ),
            ),
            const InputField(
              title: "كلمه المرور",
              icon: Icon(
                Icons.visibility_off_outlined,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AppCustomButton(
                onPressed: () {}, color: Colors.green, title: "اشتراك"),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "أو اشترك مع ",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: Get.width / 2.5,
                  child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          side: const BorderSide(color: Colors.blue)),
                      onPressed: () {},
                      icon: const Icon(Ionicons.logo_facebook),
                      label: const Text("Facebook")),
                ),
                SizedBox(
                  height: 50,
                  width: Get.width / 2.5,
                  child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          side: const BorderSide(color: Colors.red)),
                      onPressed: () {},
                      icon: const Icon(
                        Ionicons.logo_google,
                        color: Colors.red,
                      ),
                      label: const Text(
                        "Google",
                        style: TextStyle(color: Colors.red),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "لديك حساب بالفعل ؟ ",
                  style: TextStyle(color: Colors.black),
                ),
                TextButton.icon(
                    onPressed: () {},
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
    );
  }
}

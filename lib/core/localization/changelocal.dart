// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class LocalController extends GetxController {
//   Locale? language;



//   changeLanguage(String langCode) {
//     Locale locale = Locale(langCode);
//     myServices.sharedPreferences.setString("lang", langCode);
//     appTheme = langCode == "ar" ? themeArabic : themeEnglish;
//     Get.changeTheme(appTheme);
//     Get.updateLocale(locale);
//   }



//   @override
//   void onInit() {

//     String? sharePrefLanguage = myServices.sharedPreferences.getString("lang");
//     if (sharePrefLanguage == "ar") {
//       language = const Locale("ar");
//       appTheme = themeArabic;
//     } else if (sharePrefLanguage == "en") {
//       language = const Locale("en");
//       appTheme = themeEnglish;
//     } else {
//       language = Locale(Get.deviceLocale!.languageCode);
//       appTheme = themeEnglish;
//     }
//     super.onInit();
//   }
// }

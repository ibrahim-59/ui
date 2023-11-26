import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/core/services/services.dart';
import 'package:ui/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'UI Task',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffEDEDED),
          textTheme: const TextTheme()),
      getPages: routes,
      locale: const Locale("ar"),
      // translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

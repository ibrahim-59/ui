import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/core/constants/route_names.dart';

class CategoriesTitle extends StatelessWidget {
  const CategoriesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.categoriesscreen);
        },
        child: const Text(
          "التصنيفات",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
    );
  }
}

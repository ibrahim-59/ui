import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/controller/category_controller.dart';
import 'package:ui/view/widgets/categoryitems/catdescpart.dart';
import 'package:ui/view/widgets/categoryitems/categoryitemspart.dart';
import 'package:ui/view/widgets/homescreen/search_part.dart';

class CategoyScreen extends StatelessWidget {
  const CategoyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryController categoryController = Get.put(CategoryController());
    return Scaffold(
        // appBar: authAppBar(center: true, title: "فواكه", color: Colors.green),
        body: OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.landscape
            ? ListView(
                children: [
                  CategorydescPart(
                    categoryController: categoryController,
                    height: Get.height / 3.5,
                    top: Get.height / 6,
                    radius: 40,
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SearchPart(),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  LayoutBuilder(builder: (context, constraints) {
                    const double itemWidth = 200.0;
                    final int crossAxisCount =
                        (constraints.maxWidth / itemWidth).floor();
                    return CategoryItemsPart(
                      count: crossAxisCount,
                    );
                  }),
                ],
              )
            : ListView(
                children: [
                  CategorydescPart(
                    radius: 50,
                    categoryController: categoryController,
                    height: Get.width / 2.5,
                    top: Get.width / 4.5,
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SearchPart(),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const CategoryItemsPart(
                    count: 2,
                  ),
                ],
              );
      },
    ));
  }
}

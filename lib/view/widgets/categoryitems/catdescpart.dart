import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/controller/category_controller.dart';
import 'package:ui/core/shared/appbackbutton.dart';
import 'package:ui/core/shared/leadingappbutton.dart';

class CategorydescPart extends StatelessWidget {
  const CategorydescPart(
      {super.key,
      required this.categoryController,
      required this.height,
      required this.top,
      required this.radius});

  final CategoryController categoryController;
  final double height;
  final double top;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: height,
          color: Colors.green,
          child: Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const LeadingAppButton(),
                Text(
                  categoryController.categoryModel.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const AppBackButton(),
              ],
            ),
          ),
        ),
        Positioned(
            top: top,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(100),
              ),
              child: CircleAvatar(
                  radius: radius,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: SvgPicture.asset(
                      categoryController.categoryModel.iconNmae,
                      height: radius,
                      // ignore: deprecated_member_use
                      color: Colors.green,
                    ),
                  )),
            )),
      ],
    );
  }
}

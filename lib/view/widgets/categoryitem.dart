import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ui/core/constants/const.dart';
import 'package:ui/core/constants/route_names.dart';
import 'package:ui/data/models/categories_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryItem({
    super.key,
    required this.randomcolor,
    required this.categoryModel,
  });

  final int randomcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.categoryscreen,
              arguments: {"cat": categoryModel});
        },
        child: Container(
          width: 120,
          height: 160,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Spacer(
                flex: 1,
              ),
              Text(
                categoryModel.name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Spacer(
                flex: 2,
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      child: Image.asset(
                        categoryModel.imageName,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 35,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: CircleAvatar(
                            radius: 22,
                            backgroundColor: randomColors[randomcolor],
                            child: Center(
                              child: SvgPicture.asset(
                                categoryModel.iconNmae,
                                height: 28,
                                // ignore: deprecated_member_use
                                color: Colors.white,
                              ),
                            )),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

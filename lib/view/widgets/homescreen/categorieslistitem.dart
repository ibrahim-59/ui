import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ui/core/constants/const.dart';
import 'package:ui/core/constants/route_names.dart';
import 'package:ui/data/datasource/static/gategories_data.dart';

class CategoriesListItems extends StatelessWidget {
  const CategoriesListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: CategoriesData.data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final Random random = Random();
          int randomcolor = random.nextInt(randomColors.length);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.categoryscreen , arguments: {"cat" : CategoriesData.data[index]});
              },
              child: Container(
                width: 120,
                height: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      CategoriesData.data[index].name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomCenter,
                      children: [
                        SizedBox(
                          width: 120,
                          height: 60,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            child: Image.asset(
                              CategoriesData.data[index].imageName,
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
                                      CategoriesData.data[index].iconNmae,
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
        },
      ),
    );
  }
}

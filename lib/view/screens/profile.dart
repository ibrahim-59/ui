import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/view/widgets/profilescreen/bottom_part.dart';
import 'package:ui/view/widgets/profilescreen/profileitems.dart';
import 'package:ui/view/widgets/profilescreen/userphoto.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.landscape
            ? ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 80),
                      UserPhoto(
                        radius: 50,
                        width: Get.height / 3.5,
                        bottom: Get.height / 4.5,
                      ),
                      const SizedBox(height: 10),
                      LayoutBuilder(builder: (context, constraints) {
                        const double itemWidth = 100.0;
                        final int crossAxisCount =
                            (constraints.maxWidth / itemWidth).floor();
                        return ProfileItems(
                          count: crossAxisCount,
                        );
                      }),
                      BottomBartProfile(
                        width: Get.height / 2.5,
                      )
                    ],
                  ),
                ],
              )
            : ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      SizedBox(height: Get.width / 3.5),
                      UserPhoto(
                        radius: 60,
                        width: Get.width / 2.5,
                        bottom: Get.width / 3.5,
                      ),
                      const SizedBox(height: 10),
                      LayoutBuilder(builder: (context, constraints) {
                        const double itemWidth = 100.0;
                        final int crossAxisCount =
                            (constraints.maxWidth / itemWidth).floor();
                        return ProfileItems(
                          count: crossAxisCount,
                        );
                      }),
                      BottomBartProfile(
                        width: Get.width / 2.5,
                      )
                    ],
                  ),
                ],
              );
      },
    );
  }
}

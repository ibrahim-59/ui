import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ui/controller/onboarding_controller.dart';
import 'package:ui/data/datasource/static/onboarding_data.dart';

class OnBoardingdottsController extends StatelessWidget {
  const OnBoardingdottsController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(builder: (controller) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              height: 6,
              width: controller.currentPage == index ? 20 : 5,
              decoration: BoxDecoration(
                color: onBoardingList[index].color,
                borderRadius: BorderRadius.circular(10),
              ),
              duration: const Duration(milliseconds: 900),
            ),
          ),
        ],
      );
    });
  }
}

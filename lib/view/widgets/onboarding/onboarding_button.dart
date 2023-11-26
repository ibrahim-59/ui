import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/controller/onboarding_controller.dart';
import 'package:ui/data/datasource/static/onboarding_data.dart';
import 'package:ui/view/widgets/onboarding/dots_controller.dart';

class OnBoardingButton extends GetView<OnBoardingControllerImpl> {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const OnBoardingdottsController(),
          GetBuilder<OnBoardingControllerImpl>(
            builder: (controllller) {
              return GestureDetector(
                onTap: () {
                  controllller.next();
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color:controller.currentPage != 3 ?onBoardingList[controller.currentPage].color : Colors.white,
                  ),
                  child: const Icon(
                    Icons.arrow_right_alt_sharp,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ui/controller/onboarding_controller.dart';
import 'package:ui/data/datasource/static/onboarding_data.dart';

class OnBoardingSlider extends GetView<OnBoardingControllerImpl> {
  const OnBoardingSlider({required this.height, super.key});
  final double height;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller.pageController,
      onPageChanged: (value) {
        // ignore: avoid_print
        print(value);
        controller.onPageGhanged(value);
      },
      itemBuilder: (context, index) => OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: orientation == Orientation.landscape
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  onBoardingList[index].image!,
                  width: double.infinity,
                  height: height,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                onBoardingList[index].title!,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 28,
                    color: onBoardingList[index].color!,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                onBoardingList[index].body!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
              ),
            ],
          ),
        );
      }),
    );
  }
}

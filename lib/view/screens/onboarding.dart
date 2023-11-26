import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/controller/onboarding_controller.dart';
import 'package:ui/view/widgets/onboarding/onboarding_button.dart';
import 'package:ui/view/widgets/onboarding/onboardingslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return Scaffold(
        backgroundColor: Colors.white,
        body: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.landscape
                ? ListView(
                    children: [
                      SizedBox(
                          height: Get.width / 2.6,
                          child: const Expanded(
                            child: OnBoardingSlider(
                              height: 150,
                            ),
                          )),
                      const OnBoardingButton(),
                    ],
                  )
                : ListView(
                    children: const [
                      SizedBox(
                          height: 550,
                          child: OnBoardingSlider(
                            height: 220,
                          )),
                      OnBoardingButton(),
                    ],
                  );
          },
        ));
  }
}

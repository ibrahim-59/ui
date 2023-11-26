
import 'package:flutter/material.dart';
import 'package:ui/core/constants/assets_manager.dart';
import 'package:ui/data/models/onboardingmodel.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: "البحث بالقرب منك",
    body: "البحث عن المتاجر المفضله التي تريدها بموقعك او حيك",
    image: AssetsManager.onboarding1,
    color: Colors.red
  ),
  OnBoardingModel(
    title: "عروض طازجه وجوده",
    body: "جميع العناصر لها نضاره حقيقيه وهيا مخصصه لاحتياجاتك",
    image: AssetsManager.onboarding2,
    color: Colors.green
  ),
  OnBoardingModel(
    title: "تسليم سريع للمنازل",
    body: "جميع العناصر لها نضاره حقيقيه وهيا مخصصه لاحتياجاتك",
    image: AssetsManager.onboarding3,
    color: const Color(0xff2596be)
  ),
];

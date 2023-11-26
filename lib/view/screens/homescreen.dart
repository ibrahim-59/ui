import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/view/widgets/homescreen/best_quality_items.dart';
import 'package:ui/view/widgets/homescreen/bestqualitytitle.dart';
import 'package:ui/view/widgets/homescreen/categorieslistitem.dart';
import 'package:ui/view/widgets/homescreen/categoriestitle.dart';
import 'package:ui/view/widgets/homescreen/offers_widget.dart';
import 'package:ui/view/widgets/homescreen/search_part.dart';
import 'package:ui/view/widgets/homescreen/topsallesitems.dart';
import 'package:ui/view/widgets/homescreen/topsallestitle.dart';
import 'package:ui/view/widgets/homescreen/userdesc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.landscape
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const UserDesc(),
                    const SearchPart(),
                    const BestQualityTitle(),
                    const BestQualityItems(),
                    const CategoriesTitle(),
                    const CategoriesListItems(),
                    const TextTitle(title: "الأكثر مبيعا"),
                    LayoutBuilder(builder: (context, constraints) {
                      const double itemWidth = 200.0;
                      final int crossAxisCount =
                          (constraints.maxWidth / itemWidth).floor();
                      return TopSallesWidget(
                        count: crossAxisCount,
                        width: Get.width / 5,
                      );
                    }),
                    const TextTitle(title: "تسوق حسب العروض"),
                    const OffersWidget(),
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const UserDesc(),
                    const SearchPart(),
                    const BestQualityTitle(),
                    const BestQualityItems(),
                    const CategoriesTitle(),
                    const CategoriesListItems(),
                    const TextTitle(title: "الأكثر مبيعا"),
                    TopSallesWidget(
                      count: 2,
                      width: Get.width / 4,
                    ),
                    const TextTitle(title: "تسوق حسب العروض"),
                    const OffersWidget(),
                  ],
                ),
              );
      },
    ));
  }
}

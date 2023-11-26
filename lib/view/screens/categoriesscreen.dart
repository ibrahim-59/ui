import 'dart:math';

import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:ui/core/constants/const.dart';
import 'package:ui/data/datasource/static/gategories_data.dart';
import 'package:ui/view/widgets/categoryitem.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(
          title: "التصنيفات",
          center: true,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          const double itemWidth = 150.0;
          final int crossAxisCount = (constraints.maxWidth / itemWidth).floor();
          return DynamicHeightGridView(
              builder: (context, index) {
                final Random random = Random();
                int randomcolor = random.nextInt(randomColors.length);
                return CategoryItem(
                  randomcolor: randomcolor,
                  categoryModel: CategoriesData.data[index],
                );
              },
              itemCount: CategoriesData.data.length,
              crossAxisCount: crossAxisCount);
        }));
  }
}

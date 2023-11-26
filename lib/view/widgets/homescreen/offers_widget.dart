import 'dart:math';

import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:ui/core/constants/const.dart';
import 'package:ui/data/datasource/static/offers_data.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DynamicHeightGridView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          builder: (context, index) {
            final random = Random();
            final randomIndex = random.nextInt(randomColors.length);
            return Container(
              decoration: BoxDecoration(
                  color: randomColors[randomIndex],
                  borderRadius: BorderRadius.circular(15)),
              height: 100,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  OffersData.data[index],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
              ),
            );
          },
          itemCount: OffersData.data.length,
          crossAxisCount: 3),
    );
  }
}

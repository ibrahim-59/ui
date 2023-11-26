import 'package:flutter/material.dart';
import 'package:ui/data/datasource/static/best_quality_images.dart';

class BestQualityItems extends StatelessWidget {
  const BestQualityItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        itemCount: BestQualityImagesData.data.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(BestQualityImagesData.data[index]),
            ),
          );
        },
      ),
    );
  }
}

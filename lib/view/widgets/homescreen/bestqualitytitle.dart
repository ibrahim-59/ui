import 'package:flutter/material.dart';

class BestQualityTitle extends StatelessWidget {
  const BestQualityTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Text(
              "القيمه الأفضل",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "أعلي مبيعات",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
        TextButton.icon(
            style: TextButton.styleFrom(iconColor: Colors.grey),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 13,
            ),
            label: const Text(
              "مشاهده الكل",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}

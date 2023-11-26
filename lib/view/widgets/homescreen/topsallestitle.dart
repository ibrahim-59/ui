import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;
  const TextTitle({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8, right: 20, left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
            title,
            style:const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          TextButton.icon(
              style: TextButton.styleFrom(iconColor: Colors.black),
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
      ),
    );
  }
}

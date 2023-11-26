import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButtonAppBar extends StatelessWidget {
  const BackButtonAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Get.back();
          },
          icon: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12)),
            child: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';

class LeadingAppBarButton extends StatelessWidget {
  const LeadingAppBarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12)),
            child: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 18,
            ),
          )),
    );
  }
}

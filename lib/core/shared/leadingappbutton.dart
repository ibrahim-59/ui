import 'package:flutter/material.dart';

class LeadingAppButton extends StatelessWidget {
  const LeadingAppButton({
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
              color: Colors.white,
                border: Border.all(color: Colors.white),
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

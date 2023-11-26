import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;
  const ProfileItem({
    super.key,
    this.onTap,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: const Color(0xffe54048),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(title)
                ]),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui/view/widgets/profilescreen/bottom_box.dart';

class BottomBartProfile extends StatelessWidget {
  const BottomBartProfile({
    super.key, required this.width,
  });
  final double width;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomBoxProfile(
            width: width,
            color: const Color(0xff38c084),
            title: 'خروج',
            secondColor: const Color(0xff62d4a0),
            iconData: Icons.logout_outlined,
          ),
          BottomBoxProfile(
            width: width,
            secondColor: const Color(0xffef6c74),
            color: Colors.red,
            title: 'مركز الدعم',
            iconData: Icons.supervised_user_circle_sharp,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;
  final String? title;
  final IconData selectedIcon;
  final bool active;
  const CustomButtonAppBar({
    super.key,
    required this.onPressed,
    required this.icon,
    this.title,
    required this.selectedIcon,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: title == null
          ? Icon(
              active != true ? icon : selectedIcon,
              color: active == true ? Colors.green : Colors.grey,
            )
          : Icon(
            active != true ? icon : selectedIcon,
            color: active == true ? Colors.green : Colors.grey,
          ),
    );
  }
}

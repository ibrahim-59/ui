import 'package:flutter/material.dart';

class AppCustomButton extends StatelessWidget {
  final void Function() onPressed;
  final Color color;
  final String title;
  const AppCustomButton({
    super.key,
    required this.onPressed,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      return SizedBox(
        width: double.infinity,
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: onPressed,
          color: color,
          height: 50,
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      );
    });
  }
}

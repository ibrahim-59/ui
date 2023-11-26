import 'package:flutter/material.dart';

class BottomBoxProfile extends StatelessWidget {
  final String title;
  final Color color;
  final Color secondColor;
  final IconData iconData;
  final double width;
  const BottomBoxProfile({
    super.key,
    required this.title,
    required this.color,
    required this.iconData,
    required this.secondColor,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: OrientationBuilder(
          builder: (context, orientation) {
            return Container(
              height: 150,
              width: width,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: secondColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        iconData,
                        color: Colors.white,
                        size: 38,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            );
          },
        ));
  }
}

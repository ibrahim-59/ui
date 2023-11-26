import 'package:flutter/material.dart';
import 'package:ui/core/constants/assets_manager.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto({
    super.key, required this.width, required this.bottom,required this.radius
  });
  final double width;
  final double bottom;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: width,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xff38bf84),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "ابراهيم عبدالله",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "hemaabdullah6@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Positioned(
            bottom: bottom,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(100),
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                   CircleAvatar(
                    radius: radius,
                    backgroundImage: const AssetImage(AssetsManager.profile),
                  ),
                  Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(100)),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
            )),
      ],
    );
  }
}

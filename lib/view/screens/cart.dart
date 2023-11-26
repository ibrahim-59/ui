// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/controller/cart_controller.dart';
import 'package:ui/core/shared/appcustombutton.dart';
import 'package:ui/view/widgets/cartscree/landscapecart.dart';
import 'package:ui/view/widgets/cartscree/normalcart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    return OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.landscape
            ? LandScapeCart()
            : NormalCart();
      },
    );
  }
}

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.width / 4.3,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.green,
              size: 150,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "عربه التسوق فارغه !",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "اجعل سلتك سعيده وأضف منتجات",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            SizedBox(
              height: Get.width / 4.3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: AppCustomButton(
                  onPressed: () {}, color: Colors.green, title: "ابدأ التسوق"),
            ),
          ],
        ),
      ),
    );
  }
}

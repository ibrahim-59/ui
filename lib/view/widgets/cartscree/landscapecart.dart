import 'package:flutter/material.dart';
import 'package:ui/view/widgets/cartscree/bottomcartsection.dart';
import 'package:ui/view/widgets/cartscree/cartlistitems.dart';

class LandScapeCart extends StatelessWidget {
  const LandScapeCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: const Text(
          "عربه التسوق",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
        ),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: CartListIems()),
          Expanded(
              flex: 1,
              child: BottomCartSection())
        ],
      ),
    );
  }
}

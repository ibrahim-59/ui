import 'package:flutter/material.dart';
import 'package:ui/view/widgets/cartscree/bottomcartsection.dart';
import 'package:ui/view/widgets/cartscree/cartlistitems.dart';

class NormalCart extends StatelessWidget {
  const NormalCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomCartSection(),
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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          Padding(padding: EdgeInsets.all(8.0), child: CartListIems()),
        ],
      ),
    );
  }
}

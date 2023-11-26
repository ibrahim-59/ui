import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:ui/controller/cart_controller.dart';
import 'package:ui/core/constants/const.dart';
import 'package:ui/data/datasource/static/items_data.dart';

class CartListIems extends GetView<CartController> {
  const CartListIems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slidable(
              startActionPane:
                  ActionPane(motion: const StretchMotion(), children: [
                SlidableAction(
                  spacing: 2,
                  flex: 2,
                  onPressed: (context) {},
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                ),
              ]),
              child: Container(
                width: isLandscape == false ? double.infinity : Get.width / 2.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                )),
                            const Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                ))
                          ],
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "3 * ${ItemsData.data[index].price} \$",
                              style: const TextStyle(
                                  color: Colors.green, fontSize: 16),
                            ),
                            Text(
                              ItemsData.data[index].itemName,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const Text("Kg 1 ")
                          ],
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

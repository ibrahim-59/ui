import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/controller/category_controller.dart';

class CategoryItemsPart extends GetView<CategoryController> {
  const CategoryItemsPart({
    super.key,
    required this.count,
  });
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
          child: DynamicHeightGridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              builder: (context, index) {
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              child: Image.asset(
                                controller.data[index].imageName,
                                fit: BoxFit.fill,
                                height: 120,
                                width: double.infinity,
                              )),
                          Positioned(
                              top: 2,
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomLeft: Radius.circular(15)),
                                    ),
                                    child: const Text(
                                      "جديد",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width / 5,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.favorite,
                                        color: Colors.green,
                                      ))
                                ],
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(12)),
                              width: 70,
                              height: 20,
                              child: Text(
                                controller.data[index].categoryName,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              controller.data[index].itemName,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.black),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "${"kg"} 1",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.black),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${controller.data[index].price} SAR",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffca424e),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: const Icon(
                                        Icons.add_box_outlined,
                                        color: Colors.white,
                                      ),
                                    ))
                              ]),
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: controller.data.length,
              crossAxisCount: count)),
    );
  }
}

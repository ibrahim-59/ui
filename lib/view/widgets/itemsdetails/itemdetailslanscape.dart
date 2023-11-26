import 'package:flutter/material.dart';
import 'package:ui/controller/itemdetails_controller.dart';
import 'package:ui/core/shared/appcustombutton.dart';

class ItemDetailsLandscape extends StatelessWidget {
  const ItemDetailsLandscape({
    super.key,
    required this.controller,
  });

  final ItemDetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.asset(controller.itemsModel.imageName),
                    ),
                  ),
                  AppCustomButton(
                      onPressed: () {},
                      color: Colors.green,
                      title: "أضف الي السله"),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Text(
                                controller.itemsModel.itemName,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                            Center(
                              child: Text(
                                "${controller.itemsModel.price} ${"جنيه"}",
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "الوصف",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const Text(
                        " يعتبر التفاح مصدراً جيداً للألياف القابلة للذوبان وغير القابلة للذوبان، والتي تلعب دوراً مهماً في تعزيز عملية الهضم الصحي وهذا بدوره يمنع الإمساك والحالات ذات الصلة",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      const Text(
                        "سياسه الاسترجاع",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const Text(
                        "يجب إرجاع أي منتج تم شراؤه وأنت على استعداد لإعادته لأي سبب من الأسباب لمدة ستة أيام",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/controller/homepage_controller.dart';

class SearchPart extends GetView<HomeScreencontroller> {
  const SearchPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
               controller.showFilterDialog(context);
              },
              child: Container(
                height: 65,
                width: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffdf515d)),
                child: const Icon(
                  Icons.format_align_center_outlined,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 18),
                      filled: true,
                      suffixIcon: const Icon(
                        Icons.search,
                      ),
                      prefixIcon: const Icon(Icons.highlight_remove_sharp),
                      hintText: "البحث عن المنتجات",
                      hintStyle: const TextStyle(
                          height: 0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                          fontSize: 18),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      fillColor: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}

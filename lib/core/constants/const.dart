import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/core/shared/appbackbutton.dart';
import 'package:ui/core/shared/backbutton.dart';
import 'package:ui/core/shared/leadingappbutton.dart';
import 'package:ui/view/widgets/auth/leadingappbar.dart';

List<Color> randomColors = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.blueGrey,
  Colors.grey,
  Colors.brown
];
OutlineInputBorder border() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.grey, width: 1));
}

AppBar authAppBar(
    {String? title, bool? center = false, Color? color = Colors.white}) {
  return AppBar(
    toolbarHeight: 70,
    elevation: 0,
    title: Text(
      title ?? "",
      style: const TextStyle(color: Colors.black),
    ),
    centerTitle: center,
    backgroundColor: color,
    actions: const [
      BackButtonAppBar(),
    ],
    leading: const LeadingAppBarButton(),
  );
}

AppBar appBar(
    {String? title, bool? center = false, Color? color = Colors.white}) {
  return AppBar(
    toolbarHeight: 70,
    elevation: 0,
    title: Text(
      title ?? "",
      style: const TextStyle(color: Colors.black),
    ),
    centerTitle: center,
    backgroundColor: color,
    actions: const [
      AppBackButton(),
    ],
    leading: const LeadingAppButton(),
  );
}

bool isLandscape = Get.mediaQuery.orientation == Orientation.landscape;
void showFilterDialog(
    BuildContext context, bool veg, bool fruit, bool lower, bool max) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('بحث بناء علي'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CheckboxListTile(
              title: const Text("اكبر سعر"),
              value: max,
              onChanged: (bool? value) {
                max == value;
              },
            ),
            CheckboxListTile(
              title: const Text("خضراوات"),
              value: veg,
              onChanged: (bool? value) {
                veg == value;
              },
            ),
            CheckboxListTile(
              title: const Text("فواكه"),
              value: fruit,
              onChanged: (bool? value) {
                fruit == value;
              },
            ),
            CheckboxListTile(
              title: const Text("أقل سعر"),
              value: lower,
              onChanged: (bool? value) {
                lower == value;
              },
            ),
          ],
        ),
        actions: [
          MaterialButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          MaterialButton(
            child: const Text('Apply'),
            onPressed: () {
              // Apply the selected filters
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

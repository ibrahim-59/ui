import 'package:flutter/material.dart';
import 'package:ui/core/constants/const.dart';

class InputField extends StatelessWidget {
  final String title;
  final Icon? icon;
  const InputField({
    super.key,
    required this.title,
     this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon:icon != null? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: icon ?? const SizedBox(),
            ),
          ) : const SizedBox(),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          hintText: title,
          hintStyle: const TextStyle(color: Colors.green, fontSize: 15),
          labelText: title,
          labelStyle: const TextStyle(color: Colors.green, fontSize: 20),
          border: border(),
          enabledBorder: border(),
          focusedBorder: border(),
          errorBorder: border(),
        ),
      ),
    );
  }
}

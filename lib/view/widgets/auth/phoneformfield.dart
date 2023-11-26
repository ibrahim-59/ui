import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ui/core/constants/const.dart';

class PhoneFormField extends StatelessWidget {
  const PhoneFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      languageCode: "ar",
      disableLengthCheck: true,
      keyboardType: TextInputType.phone,
      // controller: phonecontroller,
      textAlign: TextAlign.right,
      dropdownIconPosition: IconPosition.leading,
      decoration: InputDecoration(
        // hintText: AppStrings.phoneNumberHint,
        border: border(),
        errorBorder: border(),
        enabledBorder: border(),
        focusedBorder: border(),
        disabledBorder: border(),
        focusedErrorBorder: border(),
        prefixIcon: const Icon(
          Icons.highlight_remove_sharp,
          color: Colors.green,
        ),
        hintTextDirection: TextDirection.rtl,
      ),
    );
  }
}

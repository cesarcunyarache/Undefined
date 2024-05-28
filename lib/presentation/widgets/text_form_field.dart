import 'package:flutter/material.dart';
import 'package:undefined/config/colors/app_colors.dart';

// ignore: must_be_immutable
class TextFormFieldCustom extends StatelessWidget {
  String? label;
  void Function(String?)? onSave;
  TextEditingController? textEditingController;
  TextInputType? textInputType;
  bool obscureText = false;

  TextFormFieldCustom(
      {super.key,
      this.label,
      this.onSave,
      this.textEditingController,
      this.textInputType,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText,
        keyboardType: textInputType,
        controller: textEditingController,
        onSaved: onSave,
        decoration: InputDecoration(
            labelText: label,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 2,
                color: AppColors
                    .primaryColor, // Color personalizado o color de acento del tema
              ),
            ),
            floatingLabelStyle: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w900),
            contentPadding:
                const EdgeInsets.only(left: 15, bottom: 15, top: 15)));
  }
}

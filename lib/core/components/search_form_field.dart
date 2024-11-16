import 'package:flutter/material.dart';
import 'package:pet_store/core/utils/app_colors.dart';
import 'package:pet_store/core/utils/app_styles.dart';

class SearchFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget? prefix;

  const SearchFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.prefix,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.darkGreyW600TextSized20,
        prefixIcon: prefix,
        filled: true,
        fillColor: AppColors.greyColor, 
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
      ),
      textAlign: TextAlign.center, // Centers the hint text
      style: const TextStyle(fontSize: 16), // Text style for entered text
    );
  }
}

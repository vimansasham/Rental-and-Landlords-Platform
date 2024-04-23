import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview(
      {Key? key,
      this.hintText,
      this.controller,
      this.margin,
      required void Function(String query),
      required void Function(String query) onChanged})
      : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 349.h,
        controller: controller,
        hintText: "Southern, 20 - 30 December, 5 guests",
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';

// ignore: must_be_immutable
class FifteenItemWidget extends StatelessWidget {
  const FifteenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage22,
      height: 323.v,
      width: 350.h,
      radius: BorderRadius.circular(
        8.h,
      ),
    );
  }
}

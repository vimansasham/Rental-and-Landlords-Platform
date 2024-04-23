import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';

// ignore: must_be_immutable
class SeventeenItemWidget extends StatelessWidget {
  const SeventeenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage22,
      height: 323.v,
      width: 380.h,
      radius: BorderRadius.circular(
        8.h,
      ),
    );
  }
}

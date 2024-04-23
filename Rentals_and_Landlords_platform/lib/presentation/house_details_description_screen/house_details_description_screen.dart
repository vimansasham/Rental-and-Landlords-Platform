import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_leading_image.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_title.dart';
import 'package:rentals_and_landlords/widgets/app_bar/custom_app_bar.dart';

class HouseDetailsDescriptionScreen extends StatelessWidget {
  const HouseDetailsDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 30.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage42,
                  height: 210.v,
                  width: 350.h,
                  radius: BorderRadius.circular(4.h),
                ),
                SizedBox(height: 18.v),
                SizedBox(
                  width: 350.h,
                  child: Text(
                    "In search of an idyllic retreat to relax and rejuvenate? Your quest ends with this breathtaking Balinese villa—an unrivaled tropical getaway. Nestled on a tranquil street, mere minutes from the beach, this exquisite home presents everything essential for a lavish and cozy stay.",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    style: CustomTextStyles.bodySmallPrimaryContainer
                        .copyWith(height: 1.67),
                  ),
                ),
                SizedBox(height: 27.v),
                _buildSeventyTwo(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 98.v,
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowright,
        margin: EdgeInsets.only(left: 20.h, top: 66.v, bottom: 8.v),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Description",
        margin: EdgeInsets.only(top: 69.v, bottom: 10.v),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSeventyTwo(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 6.h, right: 20.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage8335x162,
              height: 335.v,
              width: 162.h,
              radius: BorderRadius.circular(12.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage43,
              height: 158.v,
              width: 154.h,
              radius: BorderRadius.circular(12.h),
              margin: EdgeInsets.only(left: 8.h, bottom: 177.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

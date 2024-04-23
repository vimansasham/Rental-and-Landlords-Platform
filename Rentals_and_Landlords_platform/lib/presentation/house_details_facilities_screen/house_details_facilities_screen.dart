import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_leading_image.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_title.dart';
import 'package:rentals_and_landlords/widgets/app_bar/custom_app_bar.dart';
import 'package:rentals_and_landlords/widgets/custom_elevated_button.dart';

class HouseDetailsFacilitiesScreen extends StatelessWidget {
  const HouseDetailsFacilitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  _buildContainer60(context),
                  Container(
                      padding:
                          EdgeInsets.only(left: 14.h, top: 0.v, right: 14.h),
                      child: Column(children: [
                        _buildTag3(context),
                        SizedBox(height: 30.v),
                        _buildWifiTwo(context),
                        SizedBox(height: 26.v),
                        _buildServices(context),
                        SizedBox(height: 32.v),
                        _buildBathroom(context),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildContainer60(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineOnPrimary2,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 52.v),
              CustomAppBar(
                  height: 46.v,
                  leadingWidth: 44.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowright,
                      margin:
                          EdgeInsets.only(left: 20.h, top: 10.v, bottom: 8.v),
                      onTap: () {
                        onTapArrowLeft(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "Facilities & services"),
                  styleType: Style.bgFill),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child:
                      Text("Facilities ", style: theme.textTheme.headlineSmall))
            ]));
  }

  /// Section Widget
  Widget _buildTag3(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 0.h, top: 10.h),
            child: Row(children: [
              Container(
                  width: 80.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 7.v),
                  decoration: AppDecoration.fillOnPrimaryContainer
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder18),
                  child: Text("5 Guests",
                      style: CustomTextStyles.bodyMediumPrimaryContainer)),
              Container(
                  width: 97.h,
                  margin: EdgeInsets.only(left: 4.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 7.v),
                  decoration: AppDecoration.fillOnPrimaryContainer
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder18),
                  child: Text("3 bedroom",
                      style: CustomTextStyles.bodyMediumPrimaryContainer)),
              Container(
                  width: 60.h,
                  margin: EdgeInsets.only(left: 4.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 7.v),
                  decoration: AppDecoration.fillOnPrimaryContainer
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder18),
                  child: Text("5 bed",
                      style: CustomTextStyles.bodyMediumPrimaryContainer)),
              Container(
                  width: 105.h,
                  margin: EdgeInsets.only(left: 0.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 7.v),
                  decoration: AppDecoration.fillOnPrimaryContainer
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder18),
                  child: Text("1 bathroom",
                      style: CustomTextStyles.bodyMediumPrimaryContainer)),
            ])));
  }

  /// Section Widget
  Widget _buildWifiTwo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgWifi1,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    margin: EdgeInsets.only(top: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text("Wifi", style: theme.textTheme.bodyLarge))
              ])),
          SizedBox(height: 13.v),
          Divider(endIndent: 6.h),
          SizedBox(height: 14.v),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgPan1,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    margin: EdgeInsets.only(top: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text("Kitchen", style: theme.textTheme.bodyLarge))
              ])),
          SizedBox(height: 13.v),
          Divider(endIndent: 6.h),
          SizedBox(height: 17.v),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgSwimmingPool1,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    margin: EdgeInsets.only(top: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text("Pool", style: theme.textTheme.bodyLarge))
              ])),
          SizedBox(height: 13.v),
          Divider(indent: 6.h),
          SizedBox(height: 13.v),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: _buildClock(context,
                  clockImage: ImageConstant.imgPlantGround1,
                  washerLabel: "Garden")),
          SizedBox(height: 13.v),
          Divider(indent: 6.h)
        ]));
  }

  /// Section Widget
  Widget _buildServices(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text("Services", style: theme.textTheme.headlineSmall)),
          SizedBox(height: 20.v),
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text("Cleaning & laundry",
                  style: CustomTextStyles.titleSmallMontserrat)),
          SizedBox(height: 23.v),
          Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: _buildClock(context,
                  clockImage: ImageConstant.imgClock, washerLabel: "Washer")),
          SizedBox(height: 13.v),
          Divider(indent: 6.h),
          SizedBox(height: 16.v),
          Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgClock,
                    height: 22.adaptSize,
                    width: 22.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text("Free dryer - In unit",
                        style: theme.textTheme.bodyLarge))
              ])),
          SizedBox(height: 12.v),
          Divider(indent: 6.h)
        ]));
  }

  /// Section Widget
  Widget _buildBathroom(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text("Bathroom",
                  style: CustomTextStyles.titleSmallMontserrat)),
          SizedBox(height: 24.v),
          Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgBathtub1,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    margin: EdgeInsets.only(top: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text("Bathtub", style: theme.textTheme.bodyLarge))
              ])),
          SizedBox(height: 13.v),
          Divider(indent: 6.h)
        ]));
  }

  /// Common widget
  Widget _buildClock(
    BuildContext context, {
    required String clockImage,
    required String washerLabel,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: clockImage,
          height: 22.adaptSize,
          width: 22.adaptSize,
          margin: EdgeInsets.only(top: 1.v)),
      Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(washerLabel,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: theme.colorScheme.primaryContainer)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

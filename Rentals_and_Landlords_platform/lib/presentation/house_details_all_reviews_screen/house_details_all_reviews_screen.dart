import '../house_details_all_reviews_screen/widgets/userprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_leading_image.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_title.dart';
import 'package:rentals_and_landlords/widgets/app_bar/custom_app_bar.dart';
import 'package:rentals_and_landlords/widgets/custom_rating_bar.dart';

class HouseDetailsAllReviewsScreen extends StatelessWidget {
  const HouseDetailsAllReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  _buildContainer63(context),
                  SizedBox(height: 58.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.h, right: 20.h, bottom: 5.v),
                              child: Column(children: [
                                _buildFourHundredFiftyFive(context),
                                SizedBox(height: 32.v),
                                _buildUserProfile(context),
                                SizedBox(height: 8.v),
                                Divider()
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildContainer63(BuildContext context) {
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
                          EdgeInsets.only(left: 20.h, top: 14.v, bottom: 8.v),
                      onTap: () {
                        onTapArrowLeft(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "Reviews"),
                  styleType: Style.bgFill),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child:
                      Text("68 reviews", style: theme.textTheme.headlineSmall))
            ]));
  }

  /// Section Widget
  Widget _buildFourHundredFiftyFive(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
        decoration: AppDecoration.fillTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 54.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("4.6/5",
                            style: CustomTextStyles.titleLargeOpenSans),
                        SizedBox(height: 4.v),
                        CustomRatingBar(initialRating: 4, itemSize: 20)
                      ])),
              Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.v),
                          child: Container(
                              height: 6.v,
                              width: 89.h,
                              decoration: BoxDecoration(
                                  color: appTheme.blueGray100,
                                  borderRadius: BorderRadius.circular(3.h)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.h),
                                  child: LinearProgressIndicator(
                                      value: 0.81,
                                      backgroundColor: appTheme.blueGray100,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          appTheme.yellow800))))),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("5", style: CustomTextStyles.bodySmall11))
                    ]),
                    SizedBox(height: 6.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.v),
                          child: Container(
                              height: 6.v,
                              width: 88.h,
                              decoration: BoxDecoration(
                                  color: appTheme.blueGray100,
                                  borderRadius: BorderRadius.circular(3.h)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.h),
                                  child: LinearProgressIndicator(
                                      value: 0.56,
                                      backgroundColor: appTheme.blueGray100,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          appTheme.yellow800))))),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("4", style: CustomTextStyles.bodySmall11))
                    ]),
                    SizedBox(height: 7.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.v),
                          child: Container(
                              height: 6.v,
                              width: 89.h,
                              decoration: BoxDecoration(
                                  color: appTheme.blueGray100,
                                  borderRadius: BorderRadius.circular(3.h)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.h),
                                  child: LinearProgressIndicator(
                                      value: 0.24,
                                      backgroundColor: appTheme.blueGray100,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          appTheme.yellow800))))),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("3", style: CustomTextStyles.bodySmall11))
                    ]),
                    SizedBox(height: 6.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.v),
                          child: Container(
                              height: 6.v,
                              width: 89.h,
                              decoration: BoxDecoration(
                                  color: appTheme.blueGray100,
                                  borderRadius: BorderRadius.circular(3.h)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.h),
                                  child: LinearProgressIndicator(
                                      value: 0.15,
                                      backgroundColor: appTheme.blueGray100,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          appTheme.yellow800))))),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("2", style: CustomTextStyles.bodySmall11))
                    ]),
                    SizedBox(height: 7.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.v),
                          child: Container(
                              height: 6.v,
                              width: 90.h,
                              decoration: BoxDecoration(
                                  color: appTheme.blueGray100,
                                  borderRadius: BorderRadius.circular(3.h)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(3.h),
                                  child: LinearProgressIndicator(
                                      value: 0.03,
                                      backgroundColor: appTheme.blueGray100,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          appTheme.yellow800))))),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("1", style: CustomTextStyles.bodySmall11))
                    ])
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.5.v),
                  child: SizedBox(
                      width: 350.h,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.gray100)));
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return Userprofile1ItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

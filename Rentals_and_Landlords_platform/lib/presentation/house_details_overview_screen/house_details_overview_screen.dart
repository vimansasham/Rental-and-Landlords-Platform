import 'package:rentals_and_landlords/presentation/checkout_screen/checkout_screen.dart';
import 'package:rentals_and_landlords/presentation/house_details_all_reviews_screen/house_details_all_reviews_screen.dart';
import 'package:rentals_and_landlords/presentation/house_details_description_screen/house_details_description_screen.dart';
import 'package:rentals_and_landlords/presentation/house_details_facilities_screen/house_details_facilities_screen.dart';
import '../house_details_overview_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/widgets/custom_elevated_button.dart';
import 'package:rentals_and_landlords/widgets/custom_icon_button.dart';
import 'package:rentals_and_landlords/widgets/custom_outlined_button.dart';

class HouseDetailsOverviewScreen extends StatelessWidget {
  final double rating; // Define the 'rating' named parameter
  final String title;

  // Other parameters...

  // Constructor with 'rating' named parameter
  const HouseDetailsOverviewScreen({
    Key? key,
    required this.rating,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 28.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.v),
                _buildContainer50Section(context),
                _buildContainer57Section(context),
                _buildTwentyFive(context),
                _buildContainer59(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildContainer58(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowLeftSection(BuildContext context) {
    return CustomElevatedButton(
        height: 28.v,
        width: 50.h,
        text: "24",
        margin: EdgeInsets.only(left: 112.h, bottom: 12.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        buttonStyle: CustomButtonStyles.fillOnPrimary,
        buttonTextStyle: CustomTextStyles.bodySmallGray300);
  }

  /// Section Widget
  Widget _buildContainer50Section(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(children: [
          SizedBox(
              height: 234.v,
              width: double.maxFinite,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgImage34,
                    height: 234.v,
                    width: 390.h,
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomIconButton(
                                    height: 36.adaptSize,
                                    width: 36.adaptSize,
                                    padding: EdgeInsets.all(7.h),
                                    decoration: IconButtonStyleHelper
                                        .fillOnPrimaryContainerTL18,
                                    onTap: () {
                                      onTapBtnArrowLeft(context);
                                    },
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgArrowLeftOnprimarycontainer)),
                                CustomIconButton(
                                    height: 36.adaptSize,
                                    width: 36.adaptSize,
                                    padding: EdgeInsets.all(7.h),
                                    decoration: IconButtonStyleHelper
                                        .fillOnPrimaryContainerTL18,
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgHeartOnprimarycontainer))
                              ]),
                          SizedBox(height: 146.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgMenu53,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(top: 16.v)),
                                    _buildArrowLeftSection(context)
                                  ]))
                        ])))
              ])),
          SizedBox(height: 19.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Beach House,Matara",
                        style: CustomTextStyles.titleLargeMontserrat_1),
                    SizedBox(height: 4.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgLoveHeartPin1,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 1.v, bottom: 2.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("64/2 Beach road,Matara",
                                        style: CustomTextStyles
                                            .bodyMediumPrimaryContainer))
                              ]),
                          Text("View map",
                              style: CustomTextStyles.bodyMediumPrimary
                                  .copyWith(
                                      decoration: TextDecoration.underline))
                        ])
                  ])),
          SizedBox(height: 11.v),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              padding: EdgeInsets.all(12.h),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 50.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRating3,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 3.v, bottom: 4.v)),
                              Text("4.5/5",
                                  style: CustomTextStyles
                                      .bodyMediumPrimaryContainer)
                            ])),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("28 reviews",
                          style: CustomTextStyles.bodyMediumPrimaryContainer),
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 27.h))
                    ])
                  ])),
          SizedBox(height: 19.v),
          Divider()
        ]));
  }

  /// Section Widget
  Widget _buildShowAllSection(BuildContext context) {
    return CustomOutlinedButton(
      text: "Show all",
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      alignment: Alignment.center,
      onPressed: () {
        // Navigate to HouseDetailsFacilitiesScreen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HouseDetailsFacilitiesScreen(),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildContainer57Section(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 22.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text("Facilities & services",
                      style: CustomTextStyles.titleMediumMontserrat)),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Row(children: [
                    Container(
                        width: 65.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.h, vertical: 4.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder12),
                        child: Text("5 Guests",
                            style: CustomTextStyles.bodySmallPrimaryContainer)),
                    Container(
                        width: 78.h,
                        margin: EdgeInsets.only(left: 4.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.h, vertical: 5.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder12),
                        child: Text("3 bedroom",
                            style: CustomTextStyles.bodySmallPrimaryContainer)),
                    Container(
                        width: 60.h,
                        margin: EdgeInsets.only(left: 4.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.h, vertical: 5.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder12),
                        child: Text("5 bed",
                            style: CustomTextStyles.bodySmallPrimaryContainer)),
                    Container(
                        width: 80.h,
                        margin: EdgeInsets.only(left: 0.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.h, vertical: 5.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder12),
                        child: Text("1 bathroom",
                            style: CustomTextStyles.bodySmallPrimaryContainer))
                  ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgWifi1,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(top: 2.v, bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("Wifi",
                            style: CustomTextStyles.bodyMediumPrimaryContainer))
                  ])),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: _buildPlantGroundOneSection(context,
                      image: ImageConstant.imgPan1, garden: "Kitchen")),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSwimmingPool1,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(top: 2.v, bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("Pool ",
                            style: CustomTextStyles.bodyMediumPrimaryContainer))
                  ])),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: _buildPlantGroundOneSection(context,
                      image: ImageConstant.imgPlantGround1, garden: "Garden ")),
              SizedBox(height: 21.v),
              _buildShowAllSection(context),
              SizedBox(height: 19.v),
              Divider()
            ]));
  }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    Text("Reviews",
                        style: CustomTextStyles
                            .titleMediumMontserratPrimaryContainer),
                    GestureDetector(
                      onTap: () {
                        // Navigate to HouseDetailsAllReviewsScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                HouseDetailsAllReviewsScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 60.h,
                        margin: EdgeInsets.only(left: 220.h, top: 2.v),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder3,
                        ),
                        child: Row(
                          children: [
                            Text("See all",
                                style: CustomTextStyles.bodySmallBluegray800),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              margin: EdgeInsets.only(left: 2.h, bottom: 3.v),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "4.6", style: theme.textTheme.headlineLarge),
                      TextSpan(
                        text: "/5",
                        style: CustomTextStyles.bodyLargeMontserrat,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 19.v),
              SizedBox(
                  height: 130.v,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 12.h);
                      },
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return UserprofileItemWidget();
                      }))
            ]));
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return SizedBox(
        height: 253.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 253.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      borderRadius: BorderRadius.circular(4.h)))),
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(width: double.maxFinite, child: Divider())),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(width: double.maxFinite, child: Divider())),
          _buildReviews(context)
        ]));
  }

  /// Section Widget
  Widget _buildViewMore(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Description", style: CustomTextStyles.titleMediumMontserrat),
          SizedBox(height: 13.v),
          Column(children: [
            CustomImageView(
                imagePath: ImageConstant.imgImage35,
                height: 210.v,
                width: 350.h),
            SizedBox(height: 14.v),
            Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: 333.h,
                    margin: EdgeInsets.only(right: 16.h),
                    child: Text(
                        "Seeking an ideal haven for relaxation and tranquility? This exquisite Balinese villa stands as the ultimate tropical retreat. Nestled on a serene street, mere minutes away from the beach, this...",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallPrimaryContainer
                            .copyWith(height: 1.67)))),
            SizedBox(height: 17.v),
            CustomOutlinedButton(
              text: "View more",
              rightIcon: Container(
                margin: EdgeInsets.only(left: 23.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowright,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
              ),
              onPressed: () {
                // Navigate to HouseDetailsDescriptionScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HouseDetailsDescriptionScreen(),
                  ),
                );
              },
            )
          ])
        ]));
  }

  /// Section Widget
  Widget _buildContainer59(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 24.v),
              _buildViewMore(context),
              SizedBox(height: 20.v),
              Divider()
            ]));
  }

  Widget _buildBookNowSection(BuildContext context) {
    return CustomElevatedButton(
      width: 144.h,
      text: "Checkout now",
      onPressed: () {
        // Navigate to HouseDetailsDescriptionScreen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CheckoutScreen(),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildContainer58(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 18.v),
        decoration: AppDecoration.outlineOnPrimary3,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 12.v),
                  child: Text("  From:",
                      style: CustomTextStyles.bodySmallGray500)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 13.v, bottom: 10.v),
                  child: Text("   LKR2000/night",
                      style: theme.textTheme.bodyMedium)),
              Spacer(),
              _buildBookNowSection(context)
            ]));
  }

  /// Common widget
  Widget _buildPlantGroundOneSection(
    BuildContext context, {
    required String image,
    required String garden,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: image,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(top: 2.v, bottom: 1.v)),
      Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(garden,
              style: CustomTextStyles.bodyMediumPrimaryContainer
                  .copyWith(color: theme.colorScheme.primaryContainer)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

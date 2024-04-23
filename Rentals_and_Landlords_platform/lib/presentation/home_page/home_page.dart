import '../home_page/widgets/container5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_leading_image.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rentals_and_landlords/widgets/app_bar/custom_app_bar.dart';
import 'package:rentals_and_landlords/widgets/custom_icon_button.dart';
import 'package:rentals_and_landlords/widgets/custom_outlined_button.dart';
import 'package:rentals_and_landlords/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineOnErrorContainer1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 0.v),
              _buildContainer14(context),
              SizedBox(height: 30.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 0.v),
                    child: Column(
                      children: [
                        _buildNineteen(context),
                        SizedBox(height: 18.v),
                        _buildTwenty(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer14(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.v),
          CustomAppBar(
            height: 70.v,
            leadingWidth: 100.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgLogo,
              margin: EdgeInsets.only(
                left: 18.h,
                top: 10.v,
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgChatCircleDots,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 0.v,
                  right: 10.h,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgBell1,
                margin: EdgeInsets.only(
                  left: 12.h,
                  right: 30.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good morning!",
                        style: CustomTextStyles.bodyMediumPoppinsGray70002,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "Vimansa Shamali",
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  margin: EdgeInsets.only(bottom: 7.v),
                  decoration: AppDecoration.fillGreen.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder22,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgRectangle,
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    radius: BorderRadius.circular(
                      22.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Container(
              height: 68.v,
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 60.v,
                      width: 350.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          30.h,
                        ),
                        border: Border.all(
                          color: appTheme.gray300,
                          width: 1.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 38.adaptSize,
                            width: 38.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillPrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSearch,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 10.v,
                              bottom: 7.v,
                            ),
                            child: Text(
                              "What do you need to stay ?",
                              style: CustomTextStyles
                                  .bodySmallPoppinsBluegray50001
                                  .copyWith(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Divider(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return SizedBox(
      height: 376.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 376.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 26.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Popular Rentals",
                    style: CustomTextStyles.titleLargePoppins,
                  ),
                  Text(
                    "Speed and efficiency in finding the best rentals",
                    style: CustomTextStyles.bodyMediumPoppinsGray70002,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 376.v,
              child: ListView.separated(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 88.v,
                  bottom: 24.v,
                ),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 8.h,
                  );
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container5ItemWidget(
                    placeDetails: _getPlaceDetails(index),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  PlaceDetails _getPlaceDetails(int index) {
    switch (index) {
      case 0:
        return PlaceDetails(
          imagePath: ImageConstant.imgImage8,
          title: 'Vila in Waligama',
          location: 'Southern',
          rating: 4.8,
        );
      case 1:
        return PlaceDetails(
          imagePath: ImageConstant.imgImage7,
          title: 'Family Home',
          location: 'Western',
          rating: 4.5,
        );
      case 2:
        return PlaceDetails(
          imagePath: ImageConstant.imgImage45,
          title: 'Gamage Boardima',
          location: 'North Central',
          rating: 4.6,
        );

      default:
        return PlaceDetails(
          imagePath: ImageConstant.imgImage11,
          title: 'Wayamba Royal',
          location: 'North Western',
          rating: 3.8,
        );
    }
  }

  Widget _buildTwenty(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 269.h,
            margin: EdgeInsets.only(right: 80.h),
            child: Text(
              "Find the best rentals at the\nbest prices..",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleLargePoppins.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          SizedBox(
            height: 248.v,
            width: 350.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage14,
                  height: 248.v,
                  width: 350.h,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomOutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.searchWhereToGoScreen,
                    );
                  },
                  height: 44.v,
                  width: 104.h,
                  text: "Find Now",
                  margin: EdgeInsets.only(
                    right: 17.h,
                    bottom: 28.v,
                  ),
                  buttonStyle: CustomButtonStyles.outlineBlueGray,
                  buttonTextStyle: CustomTextStyles.bodyLargePoppinsPrimary,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

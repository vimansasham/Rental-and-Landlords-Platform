import 'package:rentals_and_landlords/presentation/home_container_screen/home_container_screen.dart';

import '../wishlist_screen/widgets/fifteen_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/presentation/home_page/home_page.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_leading_image.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_title.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rentals_and_landlords/widgets/app_bar/custom_app_bar.dart';
import 'package:rentals_and_landlords/widgets/custom_bottom_bar.dart';
import 'package:rentals_and_landlords/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class WishlistScreen extends StatelessWidget {
  WishlistScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  _buildMainStack(context),
                  SizedBox(height: 22.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.h, right: 20.h, bottom: 5.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Places you liked",
                                        style: theme.textTheme.headlineSmall)),
                                SizedBox(height: 20.v),
                                _buildPlacesYouLikedContainer(context),
                                _buildWishlistContainer(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return SizedBox(
        height: 104.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 98.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      boxShadow: [
                        BoxShadow(
                            color:
                                theme.colorScheme.onPrimary.withOpacity(0.15),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(0, 0))
                      ]))),
          CustomAppBar(
              height: 52.v,
              leadingWidth: 44.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowright,
                  margin: EdgeInsets.only(left: 20.h, top: 14.v, bottom: 14.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "Favorites"),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgMenu510,
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 14.v))
              ],
              styleType: Style.bgFill)
        ]));
  }

  /// Section Widget
  Widget _buildPlacesYouLikedContainer(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineOnPrimary5
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CarouselSlider.builder(
              options: CarouselOptions(
                  height: 323.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    sliderIndex = index;
                  }),
              itemCount: 2,
              itemBuilder: (context, index, realIndex) {
                return FifteenItemWidget();
              }),
          SizedBox(height: 16.v),
          Padding(
              padding: EdgeInsets.only(right: 7.h),
              child: _buildBeachHouseMataraContainer(context,
                  text: "Villa in Weligama, Galle", text1: "5.0")),
          SizedBox(height: 25.v)
        ]));
  }

  /// Section Widget
  Widget _buildWishlistContainer(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineOnPrimary5
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              height: 323.v,
              width: 350.h,
              child: Stack(alignment: Alignment.centerRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgImage23,
                    height: 323.v,
                    width: 350.h,
                    radius: BorderRadius.circular(8.h),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 14.h),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                  padding: EdgeInsets.all(7.h),
                                  decoration: IconButtonStyleHelper
                                      .fillOnPrimaryContainer,
                                  alignment: Alignment.centerRight,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgHeart)),
                              SizedBox(height: 249.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgMenu53,
                                  height: 26.adaptSize,
                                  width: 26.adaptSize)
                            ])))
              ])),
          SizedBox(height: 17.v),
          Padding(
              padding: EdgeInsets.only(right: 7.h),
              child: _buildBeachHouseMataraContainer(context,
                  text: "Beach House,Matara", text1: "5.0")),
          SizedBox(height: 26.v)
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        String route = getCurrentRoute(type);
        print("Navigating to route: $route");

        if (route.isNotEmpty) {
          Navigator.pushReplacementNamed(context, route);
        }
      },
    );
  }

  /// Common widget
  Widget _buildBeachHouseMataraContainer(
    BuildContext context, {
    required String text,
    required String text1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(text,
          style: theme.textTheme.titleSmall!
              .copyWith(color: theme.colorScheme.onPrimary.withOpacity(1))),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        CustomImageView(
            imagePath: ImageConstant.imgRating3,
            height: 12.adaptSize,
            width: 12.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v)),
        Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(text1,
                style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(1))))
      ])
    ]);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeContainerScreen;
      case BottomBarEnum.Mylists:
        return AppRoutes.wishlistScreen;
      case BottomBarEnum.Booking:
        return AppRoutes.houseDetailsOverviewScreen;
      case BottomBarEnum.Inbox:
        return "/";
      case BottomBarEnum.Profile:
        return AppRoutes.userProfileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeContainerScreen:
        return HomeContainerScreen();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:rentals_and_landlords/presentation/home_container_screen/home_container_screen.dart';
import 'package:rentals_and_landlords/presentation/home_page/home_page.dart';
import 'package:rentals_and_landlords/widgets/custom_bottom_bar.dart';
import 'package:rentals_and_landlords/widgets/custom_outlined_button.dart';

class UserProfileScreen extends StatelessWidget {
  UserProfileScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SingleChildScrollView(
          // Wrap the main container with SingleChildScrollView
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildContainer93(context),
                SizedBox(height: 33.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildContainer96(
                    context,
                    settingsImage: ImageConstant.imgCreditCard,
                    settingText: "Payments",
                  ),
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildContainer96(
                    context,
                    settingsImage: ImageConstant.imgSettings,
                    settingText: "Add a Rentals",
                  ),
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildContainer96(
                    context,
                    settingsImage: ImageConstant.imgSettings,
                    settingText: "View & Edit Rentals",
                  ),
                ),
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: _buildContainer96(
                    context,
                    settingsImage: ImageConstant.imgHeadset,
                    settingText: "Contact us",
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer93(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 88.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle120x120,
            height: 120.adaptSize,
            width: 120.adaptSize,
            radius: BorderRadius.circular(
              60.h,
            ),
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 13.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vimansa Shamali",
                    style: CustomTextStyles.titleLargePoppins,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "vimansashamali99@gmail.com",
                    style: CustomTextStyles.bodyMediumPoppinsGray70002Light,
                  ),
                ],
              ),
              CustomOutlinedButton(
                width: 95.h,
                text: "Edit Profile",
                margin: EdgeInsets.only(
                  top: 8.v,
                  bottom: 11.v,
                ),
                buttonStyle: CustomButtonStyles.outlineOnPrimary,
                buttonTextStyle: CustomTextStyles.bodyMediumPoppins,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Divider(),
        ],
      ),
    );
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
  Widget _buildContainer96(
    BuildContext context, {
    required String settingsImage,
    required String settingText,
  }) {
    return GestureDetector(
      onTap: () {
        // Handle the click on "Add a Rentals" arrow
        if (settingText == "Add a Rentals") {
          Navigator.pushNamed(context, AppRoutes.addAPlaceScreen);
        }
        // Handle the click on "View & Edit Rentals" arrow
        if (settingText == "View & Edit Rentals") {
          Navigator.pushNamed(context, AppRoutes.editAPlaceScreen);
        }
      },
      child: Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray100.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder18,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: AppDecoration.fillGray10001.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder18,
              ),
              child: CustomImageView(
                imagePath: settingsImage,
                height: 22.adaptSize,
                width: 22.adaptSize,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 6.v,
                bottom: 5.v,
              ),
              child: Text(
                settingText,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                ),
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowright,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 6.v),
            ),
          ],
        ),
      ),
    );
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
}

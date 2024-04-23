import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Launch screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search - Where to go",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchWhereToGoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search - When to go - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.searchWhenToGoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search - Who to go",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchWhoToGoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search results",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchResultsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "House details - Overview",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.houseDetailsOverviewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "House details - Facilities",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.houseDetailsFacilitiesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "House details - All reviews",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.houseDetailsAllReviewsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "House details - Description",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.houseDetailsDescriptionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Checkout",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment success",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentSuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Wishlist",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.wishlistScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "User profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.userProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add a Place",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addAPlaceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit a Place",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editAPlaceScreen),
                        ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(BuildContext context, String screenTitle) {
    switch (screenTitle) {
      case "Launch screen":
        // Navigate to the Login screen when Launch screen is tapped
        Navigator.pushReplacementNamed(context, AppRoutes.loginScreen);
        break;
      case "Login":
        Navigator.pushNamed(context, AppRoutes.loginScreen);
        break;
      case "Sign up":
        Navigator.pushNamed(context, AppRoutes.signUpScreen);
        break;
      case "Search - Where to go":
        Navigator.pushNamed(context, AppRoutes.searchWhereToGoScreen);
        break;
      case "Search results":
        Navigator.pushNamed(context, AppRoutes.searchResultsScreen);
        break;
      case "House details - Overview":
        Navigator.pushNamed(context, AppRoutes.houseDetailsOverviewScreen);
        break;

      default:
        // Handle unknown screen titles or do nothing
        break;
    }
  }
}

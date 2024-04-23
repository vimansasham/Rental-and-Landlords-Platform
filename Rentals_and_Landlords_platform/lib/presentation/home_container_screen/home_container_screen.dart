import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/presentation/home_page/home_page.dart';
import 'package:rentals_and_landlords/presentation/search_where_to_go_screen/search_where_to_go_screen.dart';
import 'package:rentals_and_landlords/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
      case AppRoutes.homePage:
        return HomePage();

      default:
        return SearchWhereToGoScreen();
    }
  }
}

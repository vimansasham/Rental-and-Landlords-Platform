import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMyLists,
      activeIcon: ImageConstant.imgNavMyLists,
      title: "Wishlist",
      type: BottomBarEnum.Mylists,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavBooking,
      activeIcon: ImageConstant.imgNavBooking,
      title: "Booking",
      type: BottomBarEnum.Booking,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavInbox,
      activeIcon: ImageConstant.imgNavInbox,
      title: "Inbox",
      type: BottomBarEnum.Inbox,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfile,
      activeIcon: ImageConstant.imgNavProfile,
      title: "Profile",
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary.withOpacity(0.17),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                _onTabTapped(index);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: bottomMenuList[index].icon,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      color: appTheme.gray70002,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: appTheme.gray70002,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            activeIcon: GestureDetector(
              onTap: () {
                _onTabTapped(index);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: bottomMenuList[index].activeIcon,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      color: appTheme.gray70002,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: appTheme.gray70002,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            label: '',
          );
        }),
      ),
    );
  }

  void _onTabTapped(int index) {
    if (index == selectedIndex) {
      // Do something when the same tab is tapped again
      return;
    }

    setState(() {
      selectedIndex = index;
    });

    widget.onChanged?.call(bottomMenuList[index].type);

    // Navigate based on the selected tab
    switch (bottomMenuList[index].type) {
      case BottomBarEnum.Home:
        // Navigate to Home screen
        Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
        break;
      case BottomBarEnum.Mylists:
        // Navigate to Wishlist screen
        Navigator.pushNamed(context, AppRoutes.wishlistScreen);
        break;
      case BottomBarEnum.Booking:
        // Navigate to Wishlist screen
        Navigator.pushNamed(context, AppRoutes.houseDetailsOverviewScreen);
        break;

      case BottomBarEnum.Profile:
        // Navigate to Profile screen
        Navigator.pushNamed(context, AppRoutes.userProfileScreen);
        break;
    }
  }
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Mylists,
  Booking,
  Inbox,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

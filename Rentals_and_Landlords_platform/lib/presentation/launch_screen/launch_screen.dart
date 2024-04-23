import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return GestureDetector(
      onTap: () {
        // Navigate to the Login screen when Launch screen is tapped
        Navigator.pushReplacementNamed(context, AppRoutes.loginScreen);
      },
      child: SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 40.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  ),
                ),
                Spacer(
                  flex: 41,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgScreenshot20231212,
                  height: 280.v,
                  width: 225.h,
                ),
                Spacer(
                  flex: 58,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

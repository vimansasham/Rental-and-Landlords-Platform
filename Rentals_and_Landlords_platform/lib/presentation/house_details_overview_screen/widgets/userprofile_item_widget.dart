import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineOnPrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      width: 275.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.symmetric(vertical: 2.v),
                color: appTheme.blue100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder18,
                ),
                child: Container(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  decoration: AppDecoration.fillBlue.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder18,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle36x36,
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        radius: BorderRadius.circular(
                          18.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img111,
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        radius: BorderRadius.circular(
                          18.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Anne Rossy",
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "A day ago",
                      style: CustomTextStyles.bodySmall12,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 53.h,
                  bottom: 24.v,
                ),
                child: CustomRatingBar(
                  ignoreGestures: true,
                  initialRating: 5,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: 216.h,
            child: Text(
              "The location was ideal, the residence was roomy and immaculate, and the facilities..",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                height: 1.67,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 94.v,
      width: 337.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(bottom: 2.v),
              padding: EdgeInsets.symmetric(vertical: 2.v),
              decoration: AppDecoration.fillOnPrimaryContainer,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    margin: EdgeInsets.only(bottom: 52.v),
                    decoration: AppDecoration.fillBlue.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder18,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRectangle2,
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      radius: BorderRadius.circular(
                        18.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      bottom: 49.v,
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
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 68.v,
                    ),
                    child: CustomRatingBar(
                      ignoreGestures: true,
                      initialRating: 4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 337.h,
              child: Text(
                "We adored our stay in this enchanting abode! It boasted all the necessary amenities, and the historic ambiance..",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
                style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                  height: 1.67,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

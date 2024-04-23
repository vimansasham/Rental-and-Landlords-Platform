import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';

class PlaceDetails {
  final String imagePath;
  final String title;
  final String location;
  final double rating;

  PlaceDetails({
    required this.imagePath,
    required this.title,
    required this.location,
    required this.rating,
  });
}

class Container5ItemWidget extends StatelessWidget {
  final PlaceDetails placeDetails;

  const Container5ItemWidget({
    Key? key,
    required this.placeDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170.h,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          padding: EdgeInsets.all(7.h),
          decoration: AppDecoration.outlineGray100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: placeDetails.imagePath,
                height: 158.v,
                width: 154.h,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  placeDetails.title,
                  style: CustomTextStyles.titleSmallPoppins,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  placeDetails.location,
                  style: CustomTextStyles.bodySmallPoppins,
                ),
              ),
              SizedBox(height: 13.v),
              Container(
                margin: EdgeInsets.only(left: 4.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.fillYellow.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStar,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        '${placeDetails.rating} (250 reviews)',
                        style: CustomTextStyles.bodySmallPoppinsErrorContainer,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
            ],
          ),
        ),
      ),
    );
  }
}

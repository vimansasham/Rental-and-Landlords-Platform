import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';

class PlaceDetails {
  final String imagePath;
  final String location;

  PlaceDetails({required this.imagePath, required this.location});
}

class FortyfourItemWidget extends StatelessWidget {
  final PlaceDetails placeDetails;

  const FortyfourItemWidget(
      {Key? key, required this.placeDetails, required bool isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 123.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: placeDetails.imagePath,
              height: 120.v,
              width: 123.h,
              radius: BorderRadius.circular(
                8.h,
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              placeDetails.location,
              style: CustomTextStyles.labelLargeOpenSans,
            ),
          ],
        ),
      ),
    );
  }
}

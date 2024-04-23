import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/presentation/search_results_screen/search_results_screen.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rentals_and_landlords/widgets/app_bar/custom_app_bar.dart';
import 'package:rentals_and_landlords/widgets/custom_elevated_button.dart';
import 'package:rentals_and_landlords/widgets/custom_icon_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class SearchWhoToGoScreen extends StatefulWidget {
  const SearchWhoToGoScreen({Key? key}) : super(key: key);

  @override
  _SearchWhoToGoScreenState createState() => _SearchWhoToGoScreenState();
}

class _SearchWhoToGoScreenState extends State<SearchWhoToGoScreen> {
  int adultsCount = 0;
  int childrenCount = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 28.v,
          ),
          child: Column(
            children: [
              _buildDatesContainer(
                context,
                datesText: "Location",
                monthText: "Southern",
              ),
              SizedBox(height: 20.v),
              _buildDatesContainer(
                context,
                datesText: "Dates",
                monthText: "20 - 30   January",
              ),
              SizedBox(height: 20.v),
              _buildGuestsContainer(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildClearAllContainer(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgERemove,
          margin: EdgeInsets.symmetric(
            horizontal: 27.h,
            vertical: 7.v,
          ),
        ),
      ],
      styleType: Style.bgStyle,
    );
  }

  Widget _buildClearAllContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 18.v,
      ),
      decoration: AppDecoration.outlineOnPrimary3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 12.v,
            ),
            child: Text(
              "       Selected and move to next....",
              style: CustomTextStyles.bodyMediumGray500,
            ),
          ),
          CustomElevatedButton(
            width: 120.h,
            text: "Selected",
            onPressed: () async {
              await _updateGuests(adultsCount, childrenCount);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchResultsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildChildrenContainer(
    BuildContext context, {
    required String childrenText,
    required String zeroText,
    required VoidCallback onIncrement,
    required VoidCallback onDecrement,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 5.v,
            bottom: 6.v,
          ),
          child: Text(
            childrenText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        Spacer(),
        CustomIconButton(
          height: 32.adaptSize,
          width: 32.adaptSize,
          padding: EdgeInsets.all(6.h),
          onTap: onDecrement,
          child: CustomImageView(
            imagePath: ImageConstant.imgEDelete,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 19.h,
            top: 5.v,
            bottom: 4.v,
          ),
          child: Text(
            zeroText,
            style: CustomTextStyles.bodyLargeOnPrimary.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 21.h),
          child: CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.outlineBlueGray,
            onTap: onIncrement,
            child: CustomImageView(
              imagePath: ImageConstant.imgIAddBlueGray800,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGuestsContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 19.v),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "How many guests?",
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: _buildChildrenContainer(
              context,
              childrenText: "Adults",
              zeroText: adultsCount.toString(),
              onIncrement: () {
                setState(() {
                  adultsCount++;
                });
              },
              onDecrement: () {
                if (adultsCount > 0) {
                  setState(() {
                    adultsCount--;
                  });
                }
              },
            ),
          ),
          SizedBox(height: 12.v),
          Divider(),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: _buildChildrenContainer(
              context,
              childrenText: "Children",
              zeroText: childrenCount.toString(),
              onIncrement: () {
                setState(() {
                  childrenCount++;
                });
              },
              onDecrement: () {
                if (childrenCount > 0) {
                  setState(() {
                    childrenCount--;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDatesContainer(
    BuildContext context, {
    required String datesText,
    required String monthText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineOnPrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            datesText,
            style: CustomTextStyles.bodyMediumGray500.copyWith(
              color: appTheme.gray500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.h),
            child: Text(
              monthText,
              style: CustomTextStyles.titleSmallSemiBold.copyWith(
                color: theme.colorScheme.onPrimary.withOpacity(1),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _updateGuests(int adults, int children) async {
    try {
      await _firestore.collection('guests').doc('pYM2ZSwaack3BbH4HjN6').set({
        'adults': adults,
        'children': children,
      });
    } catch (e) {
      print("Error updating guests: $e");
    }
  }
}

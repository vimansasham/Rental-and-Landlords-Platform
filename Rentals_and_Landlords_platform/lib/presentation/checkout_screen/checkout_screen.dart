import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/presentation/payment_success_screen/payment_success_screen.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_leading_image.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_title.dart';
import 'package:rentals_and_landlords/widgets/app_bar/custom_app_bar.dart';
import 'package:rentals_and_landlords/widgets/custom_elevated_button.dart';
import 'package:rentals_and_landlords/widgets/custom_radio_button.dart';

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({Key? key}) : super(key: key);

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String radioGroup = "";
  double totalAmount = 20000.0;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 5.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 11.h, right: 16.h, bottom: 5.v),
                              child: Column(children: [
                                _buildContainer76(context),
                                SizedBox(height: 36.v),
                                _buildDurationGuests(context),
                                SizedBox(height: 36.v),
                                _buildContainer79(context),
                                SizedBox(height: 58.v),
                                Divider(),
                                SizedBox(height: 36.v),
                                _buildTwelve(context),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Divider(endIndent: 17.h))
                              ]))))
                ])),
            bottomNavigationBar: _buildContainer77(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 86.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowright,
            margin: EdgeInsets.only(left: 20.h, top: 14.v, bottom: 14.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Confirm and pay"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildContainer76(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 5.h),
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.outlineOnPrimary6
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 4.h, top: 13.v, bottom: 7.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("LKR2000/night", style: theme.textTheme.bodyMedium),
                    SizedBox(height: 16.v),
                    Text("Beach House, Matara",
                        style: CustomTextStyles.bodySmallOnPrimary),
                    SizedBox(height: 8.v),
                    Row(children: [
                      SizedBox(
                          width: 29.h,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRating3,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    margin:
                                        EdgeInsets.symmetric(vertical: 2.v)),
                                Text("5.0",
                                    style: CustomTextStyles.bodySmallOnPrimary)
                              ])),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text("68",
                              style: CustomTextStyles.bodySmallBluegray800))
                    ])
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgImage45,
              height: 100.adaptSize,
              width: 100.adaptSize,
              radius: BorderRadius.circular(4.h))
        ]));
  }

  /// Section Widget
  Widget _buildDurationGuests(BuildContext context) {
    return Column(children: [
      Container(
          margin: EdgeInsets.only(left: 9.h, right: 4.h),
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(height: 1.v),
            Align(
                alignment: Alignment.centerLeft,
                child: Text("Duration & Guests",
                    style: theme.textTheme.titleLarge)),
            SizedBox(height: 12.v),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Dates", style: CustomTextStyles.titleSmallSemiBold),
                SizedBox(height: 1.v),
                Text("January  20-30", style: theme.textTheme.bodyMedium)
              ]),
              CustomImageView(
                  imagePath: ImageConstant.imgEdit1,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 8.v))
            ]),
            SizedBox(height: 14.v),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(children: [
                Text("Guests", style: CustomTextStyles.titleSmallSemiBold),
                SizedBox(height: 3.v),
                Text("5 guest", style: theme.textTheme.bodyMedium)
              ]),
              CustomImageView(
                  imagePath: ImageConstant.imgEdit1,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 9.v, bottom: 10.v))
            ])
          ])),
      SizedBox(height: 24.v),
      Divider()
    ]);
  }

  /// Section Widget
  Widget _buildContainer79(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 9.h, right: 4.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 3.v),
          Align(
              alignment: Alignment.centerLeft,
              child:
                  Text("Payment options", style: theme.textTheme.titleLarge)),
          SizedBox(height: 15.v),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Pay in full", style: CustomTextStyles.titleSmallBluegray800),
            SizedBox(height: 6.v),
            CustomRadioButton(
              width: 400.h,
              text: "You can make a full payment",
              value: "You can make a full payment",
              groupValue: radioGroup,
              isRightCheck: true,
              onChange: (value) {
                setState(() {
                  radioGroup = value;
                  totalAmount = 20000.0;
                });
              },
            ),
          ]),
          SizedBox(height: 15.v),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Pay a half now",
                style: CustomTextStyles.titleSmallBluegray800),
            SizedBox(height: 6.v),
            CustomRadioButton(
              width: 400.h,
              text: "You can make a partial payment now",
              value: "You can make a partial payment now",
              groupValue: radioGroup,
              isRightCheck: true,
              onChange: (value) {
                setState(() {
                  radioGroup = value;
                  totalAmount = 10000.0;
                });
              },
            ),
          ])
        ]));
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 9.h, right: 4.h),
      padding: EdgeInsets.symmetric(vertical: 1.v),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Price details",
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: _buildFiftySix(
              context,
              totalUSDText: "LKR 2000 x 10 night",
              priceText: "LKR 20000.0",
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: _buildFiftySix(
              context,
              totalUSDText: "Total (USD)",
              priceText: "LKR $totalAmount",
            ),
          ),
          SizedBox(height: 25.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer77(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 18.v),
      decoration: AppDecoration.outlineOnPrimary3,
      child: CustomElevatedButton(
        text: "Book now",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PaymentSuccessScreen(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildFiftySix(
    BuildContext context, {
    required String totalUSDText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            totalUSDText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        Text(
          priceText,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
      ],
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

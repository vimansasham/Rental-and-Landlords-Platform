import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/presentation/checkout_screen/checkout_screen.dart';
import 'package:rentals_and_landlords/widgets/custom_elevated_button.dart';

class PaymentSuccessScreen extends StatefulWidget {
  const PaymentSuccessScreen({Key? key}) : super(key: key);

  @override
  _PaymentSuccessScreenState createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
  double opacity = 0.0;
  double textSize = 28.0;

  @override
  void initState() {
    super.initState();
    // Start the animation after a short delay
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        opacity = 1.0;
        textSize = 32.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          height: 782.v,
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20.h,
            top: 131.v,
            right: 20.h,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _buildOrderDetails(context),
              CustomImageView(
                imagePath: ImageConstant.imgImage46,
                height: 142.adaptSize,
                width: 142.adaptSize,
                radius: BorderRadius.circular(
                  71.h,
                ),
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildViewBooking(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: AnimatedOpacity(
        opacity: opacity,
        duration: Duration(seconds: 1),
        child: Container(
          margin: EdgeInsets.only(top: 71.v),
          padding: EdgeInsets.symmetric(vertical: 17.v),
          decoration: AppDecoration.outlineOnPrimary6.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 80.v),
              AnimatedDefaultTextStyle(
                style: TextStyle(
                  fontFamily: 'YourCustomFont',
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                child: Text("Booking Confirmed!"),
              ),
              SizedBox(height: 20.v),
              Text(
                "Thank you for choosing us for your stay. We're thrilled to have you!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'YourCustomFont',
                  fontSize: 16.0,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 20.v),
              Text(
                "Total Amount to Pay:",
                style: TextStyle(
                  fontFamily: 'YourCustomFont',
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                "LKR 20,000",
                style: TextStyle(
                  fontFamily: 'YourCustomFont',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 20.v),
              _buildSuccessIcon(),
            ],
          ),
        ),
      ),
    );
  }

  /// Custom Widget for Success Icon
  Widget _buildSuccessIcon() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 40.0,
      ),
    );
  }

  /// Section Widget
  Widget _buildViewBooking(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 18.v,
      ),
      decoration: AppDecoration.outlineOnPrimary4,
      child: CustomElevatedButton(
        text: "View booking",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CheckoutScreen(),
            ),
          );
        },
      ),
    );
  }
}

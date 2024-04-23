import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/core/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:rentals_and_landlords/presentation/home_container_screen/home_container_screen.dart';
import 'package:rentals_and_landlords/presentation/login_screen/login_screen.dart';
import 'package:rentals_and_landlords/widgets/custom_elevated_button.dart';
import 'package:rentals_and_landlords/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 80.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogo,
                  height: 112.v,
                  width: 135.h,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(
                  height: 21.v,
                  width: 300.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "SIGN UP",
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 500.h,
                    margin: EdgeInsets.only(left: 20.h, right: 0.h),
                    child: Text(
                      "Hi, Enter your details to create your Account.................",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumGray70002.copyWith(
                        fontSize: 17.0,
                        height: 1.38,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35.v),
                _buildUserName(context),
                SizedBox(height: 19.v),
                _buildEmail(context),
                SizedBox(height: 28.v),
                _buildPassword(context),
                SizedBox(height: 46.v),
                _buildSignUp(context),
                SizedBox(height: 35.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Or ",
                        style: CustomTextStyles.bodyLargePoppinsOnPrimaryLight,
                      ),
                      TextSpan(
                        text: "Sign In",
                        style: CustomTextStyles.titleMediumSemiBold,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Navigate to the signup screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                      ),
                      TextSpan(
                        text: " via",
                        style: CustomTextStyles.bodyLargePoppinsOnPrimaryLight,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 6.v),
                _buildFortySeven(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 13.h,
      ),
      child: CustomTextFormField(
        controller: userNameController,
        hintText: "User name",
        prefix: Container(
          margin: EdgeInsets.only(
            top: 3.v,
            right: 8.h,
            bottom: 20.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgProfile,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 37.v,
        ),
        contentPadding: EdgeInsets.only(right: 22.h),
      ),
    );
  }

  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 13.h,
      ),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(1.h, 1.v, 8.h, 16.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgMdilightemail,
            height: 20.v,
            width: 21.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 36.v,
        ),
        contentPadding: EdgeInsets.only(right: 30.h),
      ),
    );
  }

  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 13.h,
      ),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textStyle: TextStyle(color: Colors.black),
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        prefix: Container(
          margin: EdgeInsets.only(
            top: 3.v,
            right: 8.h,
            bottom: 20.v,
            left: 5.h,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgPassword,
            height: 14.adaptSize,
            width: 14.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 37.v,
        ),
        contentPadding: EdgeInsets.only(right: 22.h),
      ),
    );
  }

  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      height: 52.v,
      text: "Sign Up",
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleLargePoppinsOnPrimaryContainer,
      onPressed: () => _handleSignUp(context),
    );
  }

  Widget _buildFortySeven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 44.v,
            width: 112.h,
            margin: EdgeInsets.only(top: 3.v),
            padding: EdgeInsets.symmetric(
              horizontal: 45.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder22,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgGoogle,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Container(
            height: 44.v,
            width: 112.h,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 3.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 45.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder22,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgApple,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Container(
            height: 44.v,
            width: 112.h,
            margin: EdgeInsets.only(
              left: 8.h,
              bottom: 3.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 45.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder22,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgLogoFacebook,
              height: 20.adaptSize,
              width: 20.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  void _handleSignUp(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      User? user = await FirebaseAuthServices().signUpWithEmailAndPassword(
        emailController.text,
        passwordController.text,
        userNameController.text,
      );

      if (user != null) {
        // Successfully signed up, navigate to home page or wherever needed
        Navigator.pushReplacementNamed(context, '/homeContainer');
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Sign Up Failed'),
              content:
                  Text('An error occurred while signing up. Please try again.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
  }
}

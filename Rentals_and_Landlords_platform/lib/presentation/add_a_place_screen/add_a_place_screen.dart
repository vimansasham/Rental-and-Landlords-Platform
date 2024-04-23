import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/presentation/edit_a_place_screen/edit_a_place_screen.dart';
import 'package:rentals_and_landlords/presentation/home_container_screen/home_container_screen.dart';
import 'package:rentals_and_landlords/presentation/home_page/home_page.dart';
import 'package:rentals_and_landlords/presentation/user_profile_screen/user_profile_screen.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_leading_image.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_title.dart';
import 'package:rentals_and_landlords/widgets/app_bar/custom_app_bar.dart';
import 'package:rentals_and_landlords/widgets/custom_elevated_button.dart';
import 'package:rentals_and_landlords/widgets/custom_radio_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddAPlaceScreen extends StatefulWidget {
  AddAPlaceScreen({Key? key}) : super(key: key);

  @override
  _AddAPlaceScreenState createState() => _AddAPlaceScreenState();
}

class _AddAPlaceScreenState extends State<AddAPlaceScreen> {
  List<String> selectedFacilities = [];
  String radioGroup = "";
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  final CollectionReference placesCollection =
      FirebaseFirestore.instance.collection('places');

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
                  SizedBox(height: 52.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 22.h, right: 10.h, bottom: 5.v),
                              child: Column(children: [
                                _buildEnterEmailPhoneColumn1(context),
                                SizedBox(height: 14.v),
                                _buildContainer(context),
                                SizedBox(height: 24.v),
                                Divider(),
                                SizedBox(height: 36.v),
                                _buildContainer1(context),
                                SizedBox(height: 18.v),
                                Divider(),
                                SizedBox(height: 9.v),
                                _buildFacilitiesList(context),
                                SizedBox(height: 26.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 0.h),
                                        child: Text("Services",
                                            style:
                                                theme.textTheme.titleLarge))),
                                SizedBox(height: 20.v),
                                _buildCleaningLaundryColumn(context),
                                SizedBox(height: 30.v),
                                _buildLineColumn(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildContainer2(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowright,
            margin: EdgeInsets.only(left: 20.h, top: 14.v, bottom: 14.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Add a Rentals  "),
        styleType: Style.bgFill);
  }

  Widget _buildEnterEmailPhoneColumn1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Upload Photos",
                  style: CustomTextStyles.bodyMediumPoppinsGray700,
                ),
                SizedBox(height: 13.0),
                SizedBox(
                  height: 137.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildPhotoUploadItem(ImageConstant.imgImage42),
                      _buildPhotoUploadItem(ImageConstant.imgImage8335x162),
                      _buildPhotoUploadItem(ImageConstant.imgImage43),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Description',
              labelStyle: TextStyle(fontSize: 13.0),
            ),
          ),
          SizedBox(height: 15.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Location',
              labelStyle: TextStyle(fontSize: 13.0),
            ),
          ),
          SizedBox(height: 15.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Price',
              labelStyle: TextStyle(fontSize: 13.0),
            ),
          ),
          SizedBox(height: 14.0),
          Divider(color: Colors.grey, indent: 5.0),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  Widget _buildPhotoUploadItem(String imageKey) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: SizedBox(
        height: 137.0,
        width: 129.0,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/images/img_image_43.png',
              height: 137.0,
              width: 129.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 4.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 1.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Available Dates & Guests",
                  style: theme.textTheme.titleLarge)),
          SizedBox(height: 12.v),
          SizedBox(
              height: 41.v,
              width: 346.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Dates",
                        style: CustomTextStyles.titleSmallSemiBold)),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(top: 12.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 9.v),
                                  child: Text("December  20-30",
                                      style: theme.textTheme.bodyMedium)),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 10.v),
                                  child: Column(children: [
                                    SizedBox(
                                        height: 13.adaptSize,
                                        width: 13.adaptSize,
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgVector,
                                                  height: 13.adaptSize,
                                                  width: 13.adaptSize,
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgVectorPrimarycontainer,
                                                  height: 3.adaptSize,
                                                  width: 3.adaptSize,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                      top: 2.v, right: 2.h))
                                            ])),
                                    SizedBox(height: 3.v),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgVectorPrimarycontainer2x17,
                                        height: 2.v,
                                        width: 17.h)
                                  ]))
                            ])))
              ])),
          SizedBox(height: 14.v),
          SizedBox(
              height: 43.v,
              width: 346.h,
              child: Stack(alignment: Alignment.topRight, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Guests",
                        style: CustomTextStyles.titleSmallSemiBold)),
                CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 13.adaptSize,
                    width: 13.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 12.v, right: 0.h)),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgVectorPrimarycontainer,
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 0.h)),
                      SizedBox(height: 5.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("5 guest", style: theme.textTheme.bodyMedium),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgVectorPrimarycontainer2x17,
                                height: 2.v,
                                width: 10.h,
                                margin: EdgeInsets.only(top: 5.v, bottom: 11.v))
                          ])
                    ]))
              ]))
        ]));
  }

  Widget _buildContainer1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      padding: EdgeInsets.symmetric(vertical: 3.v),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child:
                Text("Availability Status", style: theme.textTheme.titleLarge),
          ),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomRadioButton(
              width: 335.h,
              text: "Available",
              value: "Available",
              groupValue: radioGroup,
              textStyle: CustomTextStyles.titleSmallBluegray800,
              isRightCheck: true,
              onChange: (value) {
                setState(() {
                  radioGroup = value;
                });
              },
            ),
          ),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomRadioButton(
              width: 335.h,
              text: "Not available",
              value: "Not available",
              groupValue: radioGroup,
              textStyle: CustomTextStyles.titleSmallBluegray800,
              isRightCheck: true,
              onChange: (value) {
                setState(() {
                  radioGroup = value;
                });
              },
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  Widget _buildFacilitiesList(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      padding: EdgeInsets.symmetric(vertical: 4.v),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 0.h),
            child: Text("Facilities", style: theme.textTheme.titleLarge),
          ),
          _buildCheckbox("Wifi"),
          _buildCheckbox("Kitchen"), // Removed Padding between Wifi and Kitchen
          _buildCheckbox("Pool"),
          _buildCheckbox("Garden"),
        ],
      ),
    );
  }

  Widget _buildCheckbox(String label) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.v),
      child: CheckboxListTile(
        title: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            label,
            style: CustomTextStyles.titleSmallBluegray800,
          ),
        ),
        controlAffinity: ListTileControlAffinity.trailing,
        contentPadding: EdgeInsets.all(0),
        value: selectedFacilities.contains(label),
        onChanged: (value) {
          setState(() {
            if (value != null && value) {
              selectedFacilities.add(label);
            } else {
              selectedFacilities.remove(label);
            }
          });
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCleaningLaundryColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.h),
      padding: EdgeInsets.symmetric(vertical: 0.v),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Cleaning & laundry",
                style: CustomTextStyles.titleMediumSemiBold),
          ),
          SizedBox(height: 2.v),
          _buildCheckbox("Washer"),
          SizedBox(height: 2.v),
          _buildCheckbox("Free dryer-In unit"),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.h),
      padding: EdgeInsets.symmetric(vertical: 0.v),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child:
                Text("Bathroom", style: CustomTextStyles.titleMediumSemiBold),
          ),
          SizedBox(height: 2.v),
          _buildCheckbox("Bath-tab"),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer2(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 18.v),
      decoration: AppDecoration.outlineOnPrimary3,
      child: CustomElevatedButton(
        text: "Add now",
        onPressed: () {
          // Get values from your UI components
          String description = descriptionController.text;
          String price = priceController.text;
          String location = locationController.text;
          String availabilityStatus = radioGroup;
          List<String> facilities = selectedFacilities;

          // Call the function to add data to Firestore
          addPlaceToFirestore(
            description,
            price,
            location,
            availabilityStatus,
            facilities,
          );

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Place added successfully!'),
              duration: Duration(seconds: 1),
            ),
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserProfileScreen(),
            ),
          );
        },
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  Future<void> addPlaceToFirestore(
    String description,
    String price,
    String location,
    String availabilityStatus,
    List<String> facilities,
  ) async {
    try {
      await placesCollection.add({
        'description': description,
        'price': price,
        'location': location,
        'availabilityStatus': availabilityStatus,
        'facilities': facilities,
        // Add more fields as needed
      });
      print('Place added to Firestore successfully!');
    } catch (e) {
      print('Error adding place to Firestore: $e');
    }
  }
}

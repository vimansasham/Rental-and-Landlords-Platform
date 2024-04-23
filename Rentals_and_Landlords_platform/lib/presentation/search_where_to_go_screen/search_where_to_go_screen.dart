import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/presentation/home_container_screen/home_container_screen.dart';
import 'package:rentals_and_landlords/presentation/home_page/home_page.dart';
import '../search_when_to_go_tab_container_screen/search_when_to_go_tab_container_screen.dart';
import '../search_where_to_go_screen/widgets/fortyfour_item_widget.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rentals_and_landlords/widgets/app_bar/custom_app_bar.dart';
import 'package:rentals_and_landlords/widgets/custom_elevated_button.dart';
import 'package:rentals_and_landlords/widgets/custom_search_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class SearchWhereToGoScreen extends StatefulWidget {
  SearchWhereToGoScreen({Key? key}) : super(key: key);

  @override
  _SearchWhereToGoScreenState createState() => _SearchWhereToGoScreenState();
}

class _SearchWhereToGoScreenState extends State<SearchWhereToGoScreen> {
  TextEditingController searchController = TextEditingController();
  List<PlaceDetails> allLocations = [
    PlaceDetails(imagePath: ImageConstant.imgImage8, location: 'Southern'),
    PlaceDetails(imagePath: ImageConstant.imgImage7, location: 'Western'),
    PlaceDetails(
        imagePath: ImageConstant.imgImage11, location: 'North Western'),
    PlaceDetails(
        imagePath: ImageConstant.imgImage23, location: 'North Central'),
    PlaceDetails(imagePath: ImageConstant.imgImage22, location: 'Central'),
    PlaceDetails(imagePath: ImageConstant.imgImage42, location: 'Eastern'),
    PlaceDetails(imagePath: ImageConstant.imgImage11, location: 'Northern'),
  ];

  Map<String, bool> selectedLocations = {};
  final CollectionReference locationsCollection =
      FirebaseFirestore.instance.collection('selectedlocation');
  @override
  void initState() {
    super.initState();
    searchController.addListener(_onSearchQueryChanged);
  }

  void _onSearchQueryChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 16.v,
            ),
            child: Column(
              children: [
                _buildSearchWhereTo(context),
                SizedBox(height: 20.v),
                _buildContainer10(
                  context,
                  guestsText: "When",
                  addGuestsText: "Add time",
                ),
                SizedBox(height: 20.v),
                _buildContainer10(
                  context,
                  guestsText: "Guests",
                  addGuestsText: "Add guests",
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildContainer13(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        GestureDetector(
          onTap: () {
            print("Selected button pressed");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: AppbarTrailingImage(
            imagePath: ImageConstant.imgERemove,
            margin: EdgeInsets.symmetric(
              horizontal: 27.h,
              vertical: 7.v,
            ),
          ),
        ),
      ],
      styleType: Style.bgStyle,
    );
  }

  Widget _buildSearchWhereTo(BuildContext context) {
    List<PlaceDetails> filteredLocations = _filterLocations();

    return Container(
      padding: EdgeInsets.symmetric(vertical: 0.v),
      decoration: AppDecoration.outlineOnPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "Where to go?",
              style: CustomTextStyles.titleLargeMontserrat,
            ),
          ),
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 21.h,
              ),
              child: CustomSearchView(
                controller: searchController,
                hintText: "Search",
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 21.v),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 147.v,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 20.h),
                scrollDirection: Axis.horizontal,
                itemCount: filteredLocations.length,
                itemBuilder: (context, index) {
                  PlaceDetails location = filteredLocations[index];
                  bool isSelected =
                      selectedLocations.containsKey(location.location)
                          ? selectedLocations[location.location]!
                          : false;

                  return GestureDetector(
                    onTap: () async {
                      await _saveLocationToFirebase(location.location);
                      setState(() {
                        selectedLocations[location.location] = !isSelected;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 16.h),
                      child: FortyfourItemWidget(
                        placeDetails: location,
                        isSelected: isSelected,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PlaceDetails> _filterLocations() {
    String searchQuery = searchController.text.toLowerCase();
    List<PlaceDetails> filteredLocations = [];

    for (PlaceDetails location in allLocations) {
      if (location.location.toLowerCase().contains(searchQuery)) {
        filteredLocations.add(location);
      }
    }

    return filteredLocations;
  }

  Future<void> _saveLocationToFirebase(String location) async {
    try {
      await locationsCollection.add({
        'location': location,
        'timestamp': FieldValue.serverTimestamp(),
      });
      print('Location saved successfully: $location');
    } catch (e) {
      print('Error saving location: $e');
    }
  }

  Future<void> _saveSelectedLocations() async {
    for (String location in selectedLocations.keys) {
      if (selectedLocations[location] == true) {
        await locationsCollection.add({
          'location': location,
          'timestamp': FieldValue.serverTimestamp(),
        });
      }
    }
  }

  Widget _buildContainer13(BuildContext context) {
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
              bottom: 10.v,
            ),
            child: Text(
              "        Selected and move to next.....",
              style: CustomTextStyles.bodyMediumGray500,
            ),
          ),
          CustomElevatedButton(
            width: 120.h,
            text: "Selected",
            onPressed: () async {
              print("Selected button pressed");
              await _saveSelectedLocations();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchWhenToGoTabContainerScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildContainer10(
    BuildContext context, {
    required String guestsText,
    required String addGuestsText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineOnPrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              guestsText,
              style: CustomTextStyles.bodyMediumGray500.copyWith(
                color: appTheme.gray500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 1.v,
              right: 22.h,
            ),
            child: Text(
              addGuestsText,
              style: CustomTextStyles.titleSmallSemiBold.copyWith(
                color: theme.colorScheme.onPrimary.withOpacity(1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/presentation/house_details_overview_screen/house_details_overview_screen.dart';
import 'package:rentals_and_landlords/presentation/search_results_screen/widgets/seventeen_item_widget.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_title_searchview.dart';
import 'package:rentals_and_landlords/widgets/app_bar/custom_app_bar.dart';
import 'package:rentals_and_landlords/widgets/custom_icon_button.dart';

class SearchResultsScreen extends StatefulWidget {
  SearchResultsScreen({Key? key}) : super(key: key);

  @override
  _SearchResultsScreenState createState() => _SearchResultsScreenState();
}

class _SearchResultsScreenState extends State<SearchResultsScreen> {
  TextEditingController searchController = TextEditingController();
  List<PlaceDetails> allPlaces = [
    PlaceDetails(title: 'Villa in Weligama, Galle', rating: 5.0),
    PlaceDetails(title: 'Beach House, Matara', rating: 5.0),
  ];

  List<PlaceDetails> searchResults = [];

  @override
  void initState() {
    super.initState();
    searchResults = List.from(allPlaces);
  }

  void _updateSearchResults(String query) {
    setState(() {
      searchResults = allPlaces
          .where((place) =>
              place.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 3.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 18.h,
                      right: 21.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Text(
                              "Suitable places for you..",
                              style: CustomTextStyles
                                  .titleMediumOpenSansBluegray800,
                            ),
                          ),
                        ),
                        SizedBox(height: 31.v),
                        _buildContainer27(context),
                        _buildContainer28(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 116.v,
      centerTitle: true,
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(
          top: 52.v,
          bottom: 21.v,
        ),
        hintText: "Southern, 20 - 30 January, 5 guests",
        controller: searchController,
        onChanged: _updateSearchResults,
        Function: (String query) {},
      ),
      styleType: Style.bgShadow,
    );
  }

  Widget _buildContainer27(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineOnPrimary5.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 323.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                // Handle page change
              },
            ),
            itemCount: 2,
            itemBuilder: (context, index, realIndex) {
              return SeventeenItemWidget();
            },
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: _buildBeachHouseMatara(
              context,
              text: "Villa in Weligama, Galle",
              text1: "5.0",
            ),
          ),
          SizedBox(height: 25.v),
        ],
      ),
    );
  }

  Widget _buildContainer28(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineOnPrimary5.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 323.v,
            width: 350.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                // Use InkWell for the image
                InkWell(
                  onTap: () {
                    // Handle image click if needed
                    // Navigate to HouseDetailsOverviewScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HouseDetailsOverviewScreen(
                          title: "Beach House, Matara",
                          rating: 5.0,
                        ),
                      ),
                    );
                  },
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage23,
                    height: 323.v,
                    width: 350.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 14.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          decoration:
                              IconButtonStyleHelper.fillOnPrimaryContainer,
                          alignment: Alignment.centerRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHeartGray500,
                          ),
                        ),
                        SizedBox(height: 249.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgMenu53,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 7.h),
            child: _buildBeachHouseMatara(
              context,
              text: "Beach House,Matara",
              text1: "5.0",
            ),
          ),
          SizedBox(height: 26.v),
        ],
      ),
    );
  }

  Widget _buildBeachHouseMatara(BuildContext context,
      {required String text, required String text1}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRating3,
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(
                top: 4.v,
                bottom: 3.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                text1,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PlaceDetails {
  final String title;
  final double rating;

  PlaceDetails({required this.title, required this.rating});
}

import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/core/app_export.dart';
import 'package:rentals_and_landlords/presentation/search_when_to_go_page/search_when_to_go_page.dart';
import 'package:rentals_and_landlords/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rentals_and_landlords/widgets/app_bar/custom_app_bar.dart';

class SearchWhenToGoTabContainerScreen extends StatefulWidget {
  const SearchWhenToGoTabContainerScreen({Key? key}) : super(key: key);

  @override
  SearchWhenToGoTabContainerScreenState createState() =>
      SearchWhenToGoTabContainerScreenState();
}

class SearchWhenToGoTabContainerScreenState
    extends State<SearchWhenToGoTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 28.v),
              _buildLocationContainer(context),
              SizedBox(height: 44.v),
              _buildWhenStayingContainer(context),
              Expanded(
                child: SizedBox(
                  height: 554.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      SearchWhenToGoPage(),
                      SearchWhenToGoPage(),
                    ],
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

  Widget _buildLocationContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
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
            "Location",
            style: CustomTextStyles.bodyMediumGray500,
          ),
          Padding(
            padding: EdgeInsets.only(right: 18.h),
            child: Text(
              "Southern",
              style: CustomTextStyles.titleSmallSemiBold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWhenStayingContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 40.h,
        right: 36.h,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "When staying",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 15.v),
          Container(
            height: 36.v,
            width: 314.h,
            decoration: BoxDecoration(
              color: appTheme.gray100,
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            ),
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: theme.colorScheme.primaryContainer,
              unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
              indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(18.h),
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    "Choose dates",
                  ),
                ),
                Tab(
                  child: Text(
                    "Anytime",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

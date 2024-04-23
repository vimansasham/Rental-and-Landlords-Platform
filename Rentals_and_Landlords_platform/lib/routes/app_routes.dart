import 'package:flutter/material.dart';
import 'package:rentals_and_landlords/presentation/launch_screen/launch_screen.dart';
import 'package:rentals_and_landlords/presentation/login_screen/login_screen.dart';
import 'package:rentals_and_landlords/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:rentals_and_landlords/presentation/home_container_screen/home_container_screen.dart';
import 'package:rentals_and_landlords/presentation/home_page/home_page.dart';
import 'package:rentals_and_landlords/presentation/search_where_to_go_screen/search_where_to_go_screen.dart';
import 'package:rentals_and_landlords/presentation/search_when_to_go_tab_container_screen/search_when_to_go_tab_container_screen.dart';
import 'package:rentals_and_landlords/presentation/search_who_to_go_screen/search_who_to_go_screen.dart';
import 'package:rentals_and_landlords/presentation/search_results_screen/search_results_screen.dart';
import 'package:rentals_and_landlords/presentation/house_details_overview_screen/house_details_overview_screen.dart';
import 'package:rentals_and_landlords/presentation/house_details_facilities_screen/house_details_facilities_screen.dart';
import 'package:rentals_and_landlords/presentation/house_details_all_reviews_screen/house_details_all_reviews_screen.dart';
import 'package:rentals_and_landlords/presentation/house_details_description_screen/house_details_description_screen.dart';
import 'package:rentals_and_landlords/presentation/checkout_screen/checkout_screen.dart';
import 'package:rentals_and_landlords/presentation/payment_success_screen/payment_success_screen.dart';
import 'package:rentals_and_landlords/presentation/wishlist_screen/wishlist_screen.dart';
import 'package:rentals_and_landlords/presentation/user_profile_screen/user_profile_screen.dart';
import 'package:rentals_and_landlords/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:rentals_and_landlords/presentation/add_a_place_screen/add_a_place_screen.dart';
import 'package:rentals_and_landlords/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:rentals_and_landlords/presentation/edit_a_place_screen/edit_a_place_screen.dart';

class AppRoutes {
  static const String launchScreen = '/launch_screen';

  static const String loginScreen = '/login_screen';

  static const String homeContainerScreen = "/homeContainer";

  static const String signUpScreen = "/signUp";

  static const String homePage = '/home_page';

  static const String searchWhereToGoScreen = '/search_where_to_go_screen';

  static const String searchWhenToGoPage = '/search_when_to_go_page';

  static const String searchWhenToGoTabContainerScreen =
      '/search_when_to_go_tab_container_screen';

  static const String searchWhoToGoScreen = '/search_who_to_go_screen';

  static const String searchResultsScreen = '/search_results_screen';

  static const String houseDetailsOverviewScreen =
      '/house_details_overview_screen';

  static const String houseDetailsFacilitiesScreen =
      '/house_details_facilities_screen';

  static const String houseDetailsAllReviewsScreen =
      '/house_details_all_reviews_screen';

  static const String houseDetailsDescriptionScreen =
      '/house_details_description_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String paymentSuccessScreen = '/payment_success_screen';

  static const String wishlistScreen = '/wishlist_screen';

  static const String userProfileScreen = '/user_profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String addAPlaceScreen = '/add_a_place_screen';
  static const String editAPlaceScreen = '/edit_a_place_screen';
  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    launchScreen: (context) => LaunchScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    homePage: (context) => HomePage(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    searchWhereToGoScreen: (context) => SearchWhereToGoScreen(),
    searchWhenToGoTabContainerScreen: (context) =>
        SearchWhenToGoTabContainerScreen(),
    searchWhoToGoScreen: (context) => SearchWhoToGoScreen(),
    searchResultsScreen: (context) => SearchResultsScreen(),
    houseDetailsOverviewScreen: (context) => HouseDetailsOverviewScreen(
          rating: 5.0,
          title: 'Beach House, Matara',
        ),
    houseDetailsFacilitiesScreen: (context) => HouseDetailsFacilitiesScreen(),
    houseDetailsAllReviewsScreen: (context) => HouseDetailsAllReviewsScreen(),
    houseDetailsDescriptionScreen: (context) => HouseDetailsDescriptionScreen(),
    checkoutScreen: (context) => CheckoutScreen(),
    paymentSuccessScreen: (context) => PaymentSuccessScreen(),
    wishlistScreen: (context) => WishlistScreen(),
    userProfileScreen: (context) => UserProfileScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    addAPlaceScreen: (context) => AddAPlaceScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    editAPlaceScreen: (context) => EditAPlaceScreen()
  };
}

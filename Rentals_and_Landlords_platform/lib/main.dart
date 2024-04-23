import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:rentals_and_landlords/theme/theme_helper.dart';
import 'package:rentals_and_landlords/routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().whenComplete(() {
    debugPrint("fb is connected");
  });

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  //ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'rentals_and_landlords',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.launchScreen,
      routes: AppRoutes.routes,
    );
  }
}

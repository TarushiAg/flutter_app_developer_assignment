import 'package:app_developer_assignment/screens/HomeScreen.dart';
import 'package:app_developer_assignment/screens/Login.dart';
import 'package:app_developer_assignment/util/SharedPreferenceUtils.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceUtils.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game.TV',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
          child: PreferenceUtils.getString(
                          PreferenceUtils.KEY_CUSTOMER_USERNAME) ==
                      null ||
                  PreferenceUtils.getString(
                          PreferenceUtils.KEY_CUSTOMER_USERNAME) ==
                      ""
              ? LoginScreen()
              : HomeScreen()),
    );
  }
}

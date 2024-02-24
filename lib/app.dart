import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trim_convict/features/authentication/screens/onboarding/onboarding.dart';
import 'package:trim_convict/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreens(),
    );
  }
}


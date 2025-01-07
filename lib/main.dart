import 'package:flutter/material.dart';
import 'package:islami/features/splash/pages/splash_page.dart';

import 'features/layout/pages/layout_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (BuildContext _) {
          return const SplashPage();
        },
        LayoutPage.routeName: (BuildContext _) {
          return const LayoutPage();
        }
      },
    );
  }
}

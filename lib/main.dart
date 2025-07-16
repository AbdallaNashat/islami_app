import 'package:flutter/material.dart';
import 'package:islami/core/services/api/models/di/di.dart';
import 'package:islami/core/services/local_storage_serv.dart';
import 'package:islami/features/layout/pages/hadith/hadith_tab.dart';
import 'package:islami/features/layout/pages/onboarding/onbordaing_pages.dart';
import 'package:islami/features/layout/pages/quran/quran_details.dart';
import 'package:islami/features/splash/pages/splash_page.dart';

import 'features/layout/pages/layout_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LocalStroageSrvices.init();
  configureDependencies();
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
        SplashPage.routeName: (_) => const SplashPage(),
        LayoutPage.routeName: (_) => const LayoutPage(),
        QuranDetails.routeName: (_) => const QuranDetails(),
        IntroScreen.routeName: (_) => const IntroScreen(),
        HadithTab.routeName: (_) => const HadithTab(),
      },
    );
  }
}

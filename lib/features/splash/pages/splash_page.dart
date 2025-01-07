import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islami/features/layout/pages/layout_page.dart';

import '../../../core/constants/app_assets.dart';

class SplashPage extends StatefulWidget {
  static String routeName = "Splash";
  static final Duration _duration = Duration(
    milliseconds: 1750,
  );

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LayoutPage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.sPlashBg),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: FadeInDown(
                duration: SplashPage._duration,
                child: Image.asset(
                  AppAssets.glow,
                  height: size.height * 0.25,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: size.height * 0.25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: FadeInLeft(
                  duration: SplashPage._duration,
                  child: Image.asset(
                    AppAssets.splashLeft,
                    height: size.height * 0.25,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.25),
              child: Align(
                alignment: Alignment.centerRight,
                child: FadeInRight(
                  duration: SplashPage._duration,
                  child: Image.asset(
                    AppAssets.splashRight,
                    height: size.height * 0.25,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ZoomIn(
                duration: SplashPage._duration,
                child: Image.asset(
                  AppAssets.centerSplash,
                  height: size.height * 0.25,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FadeInUp(
                duration: SplashPage._duration,
                child: Image.asset(
                  AppAssets.branding,
                  height: size.height * 0.25,
                  width: size.width * 0.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

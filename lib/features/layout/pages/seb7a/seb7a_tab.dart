import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/themes/app_colors.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0.0;
  int currentIndex = 0;

  final List<String> seb7aList = [
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر"
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.seb7aBG),
          fit: BoxFit.fill,
          opacity: 0.3,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                AppAssets.islamiLogo,
                height: size.height * 0.15,
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: _onSeb7aTab,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width * 0.20,
                        ),
                        child: Image.asset(
                          AppAssets.headSeb7a,
                          height: size.height * 0.10,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: size.height * 0.09,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Transform.rotate(
                              angle: angle,
                              child: Image.asset(
                                AppAssets.seb7aBody,
                                width: size.width * 0.70,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  seb7aList[currentIndex],
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  counter.toString(),
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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

  _onSeb7aTab() {
    counter++;
    angle -= 5;

    if (counter == 33) {
      counter = 0;
      currentIndex++;
      if (currentIndex == 4) currentIndex = 0;
    }
    setState(() {});
  }
}

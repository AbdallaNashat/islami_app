import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/features/layout/pages/hadith/widgets/hadith_card.dart';
import 'package:islami/models/hadith_data.dart';

import '../../../../core/constants/app_assets.dart';

class HadithTab extends StatefulWidget {
  static const String routeName = "HadithTab";

  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<HadithData> hadithDataList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithDataList.isEmpty) loadHadithData();

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.hadithBg,
          ),
          opacity: 0.3,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Image.asset(AppAssets.islamiLogo),
          ),
          Expanded(
            child: CarouselSlider(
                items: hadithDataList.map(
                  (e) {
                    return HadithCard(
                      hadithData: e,
                    );
                  },
                ).toList(),
                options: CarouselOptions(
                  aspectRatio: 0.68,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: true,
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.25,
                  scrollDirection: Axis.horizontal,
                )),
          )
        ],
      ),
    );
  }

  loadHadithData() async {
    String content = await rootBundle.loadString("assets/files/hadith.txt");
    List<String> hadithList = content.split("#");
    for (var element in hadithList) {
      String singleHadith = element.trim();
      int index = singleHadith.indexOf("\n");
      String hadithTitle = singleHadith.substring(0, index);
      String hadithContent = singleHadith.substring(index + 1);
      var hadithData =
          HadithData(hadithTitle: hadithTitle, hadithContent: hadithContent);
      hadithDataList.add(hadithData);
      setState(() {});
    }
  }
}

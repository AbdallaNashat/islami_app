import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami/features/layout/pages/hadith/widgets/hadith_card.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../models/hadith_data.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<HadithData> items = [
    HadithData(nameAR: "الحديث الأول", id: 1),
    HadithData(nameAR: "الحديث الثاني", id: 2),
    HadithData(nameAR: "الحديث الثالث", id: 3),
    HadithData(nameAR: "الحديث الرابع", id: 4),
    HadithData(nameAR: "الحديث الخامس", id: 5),
    HadithData(nameAR: "الحديث السادس", id: 6),
    HadithData(nameAR: "الحديث السابع", id: 7),
    HadithData(nameAR: "الحديث الثامن", id: 8),
    HadithData(nameAR: "الحديث التاسع", id: 9),
    HadithData(nameAR: "الحديث العاشر", id: 10),
    HadithData(nameAR: "الحديث الحادي عشر", id: 11),
    HadithData(nameAR: "الحديث الثاني عشر", id: 12),
    HadithData(nameAR: "الحديث الثالث عشر", id: 13),
    HadithData(nameAR: "الحديث الرابع عشر", id: 14),
    HadithData(nameAR: "الحديث الخامس عشر", id: 15),
    HadithData(nameAR: "الحديث السادس عشر", id: 16),
    HadithData(nameAR: "الحديث السابع عشر", id: 17),
    HadithData(nameAR: "الحديث الثامن عشر", id: 18),
    HadithData(nameAR: "الحديث التاسع عشر", id: 19),
    HadithData(nameAR: "الحديث العشرون", id: 20),
    HadithData(nameAR: "الحديث الحادي والعشرون", id: 21),
    HadithData(nameAR: "الحديث الثاني والعشرون", id: 22),
    HadithData(nameAR: "الحديث الثالث والعشرون", id: 23),
    HadithData(nameAR: "الحديث الرابع والعشرون", id: 24),
    HadithData(nameAR: "الحديث الخامس والعشرون", id: 25),
    HadithData(nameAR: "الحديث السادس والعشرون", id: 26),
    HadithData(nameAR: "الحديث السابع والعشرون", id: 27),
    HadithData(nameAR: "الحديث الثامن والعشرون", id: 28),
    HadithData(nameAR: "الحديث التاسع والعشرون", id: 29),
    HadithData(nameAR: "الحديث الثلاثون", id: 30),
    HadithData(nameAR: "الحديث الحادي والثلاثون", id: 31),
    HadithData(nameAR: "الحديث الثاني والثلاثون", id: 32),
    HadithData(nameAR: "الحديث الثالث والثلاثون", id: 33),
    HadithData(nameAR: "الحديث الرابع والثلاثون", id: 34),
    HadithData(nameAR: "الحديث الخامس والثلاثون", id: 35),
    HadithData(nameAR: "الحديث السادس والثلاثون", id: 36),
    HadithData(nameAR: "الحديث السابع والثلاثون", id: 37),
    HadithData(nameAR: "الحديث الثامن والثلاثون", id: 38),
    HadithData(nameAR: "الحديث التاسع والثلاثون", id: 39),
    HadithData(nameAR: "الحديث الأربعون", id: 40),
    HadithData(nameAR: "الحديث الحادي والأربعون", id: 41),
    HadithData(nameAR: "الحديث الثاني والأربعون", id: 42),
    HadithData(nameAR: "الحديث الثالث والأربعون", id: 43),
    HadithData(nameAR: "الحديث الرابع والأربعون", id: 44),
    HadithData(nameAR: "الحديث الخامس والأربعون", id: 45),
    HadithData(nameAR: "الحديث السادس والأربعون", id: 46),
    HadithData(nameAR: "الحديث السابع والأربعون", id: 47),
    HadithData(nameAR: "الحديث الثامن والأربعون", id: 48),
    HadithData(nameAR: "الحديث التاسع والأربعون", id: 49),
    HadithData(nameAR: "الحديث الخمسون", id: 50),
  ];

  @override
  Widget build(BuildContext context) {
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
                items: items.map(
                  (e) {
                    return const HadithCard();
                  },
                ).toList(),
                options: CarouselOptions(
                  aspectRatio: 0.68,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
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
}

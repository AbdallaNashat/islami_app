import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/features/layout/pages/hadith/hadith_tab.dart';
import 'package:islami/features/layout/pages/quran/quran_tab.dart';
import 'package:islami/features/layout/pages/radio/radio_tab.dart';
import 'package:islami/features/layout/pages/seb7a/seb7a_tab.dart';
import 'package:islami/features/layout/pages/time/time_tab.dart';

import '../../../core/themes/app_colors.dart';
import '../widgets/custon_navbar_widget.dart';

class LayoutPage extends StatefulWidget {
  static String routeName = "/Layout";

  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    const QuranTab(),
    const HadithTab(),
    const SebhaTab(),
    const RadioTab(),
    const TimeTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.primaryColor,
          fixedColor: AppColors.white,
          showUnselectedLabels: false,
          onTap: (int index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: CustomNavBarWidget(
                selectedIndex: selectedIndex,
                navBarItem: 0,
                iconPath: AppAssets.quranIcon,
              ),
              label: "Quran",
            ),
            BottomNavigationBarItem(
                icon: CustomNavBarWidget(
                  selectedIndex: selectedIndex,
                  navBarItem: 1,
                  iconPath: AppAssets.hadethIcon,
                ),
                label: "Hadeth"),
            BottomNavigationBarItem(
              icon: CustomNavBarWidget(
                selectedIndex: selectedIndex,
                navBarItem: 2,
                iconPath: AppAssets.seb7aIcon,
              ),
              label: "Sebha",
            ),
            BottomNavigationBarItem(
              icon: CustomNavBarWidget(
                selectedIndex: selectedIndex,
                navBarItem: 3,
                iconPath: AppAssets.radioIcon,
              ),
              label: "Radio",
            ),
            BottomNavigationBarItem(
              icon: CustomNavBarWidget(
                selectedIndex: selectedIndex,
                navBarItem: 4,
                iconPath: AppAssets.timeIcon,
              ),
              label: "Time",
            ),
          ]),
      body: tabs[selectedIndex],
    );
  }
}

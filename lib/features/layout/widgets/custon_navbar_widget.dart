import 'package:flutter/material.dart';

import '../../../core/themes/app_colors.dart';

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final int navBarItem;

  final String iconPath;

  const CustomNavBarWidget(
      {super.key,
      required this.selectedIndex,
      required this.navBarItem,
      required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: selectedIndex == navBarItem
            ? AppColors.secondaryColor.withOpacity(0.5)
            : Colors.transparent,
      ),
      child: ImageIcon(
        AssetImage(
          iconPath,
        ),
      ),
    );
  }
}

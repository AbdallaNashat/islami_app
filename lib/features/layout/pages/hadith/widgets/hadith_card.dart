import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/models/hadith_data.dart';

class HadithCard extends StatelessWidget {
  final HadithData hadithData;

  const HadithCard({
    super.key,
    required this.hadithData,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.hadithCard,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            hadithData.hadithTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  hadithData.hadithContent,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/constants/app_assets.dart';

class HadithCard extends StatefulWidget {
  const HadithCard({super.key});

  @override
  State<HadithCard> createState() => _HadithCardState();
}

class _HadithCardState extends State<HadithCard> {
  @override
  Widget build(BuildContext context) {
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
      child: const Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "الحديث الأول",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }

  loadHadithData() async {
    await rootBundle.loadString("assets/files/hadith");
    setState(() {
      //List<String> allHadith  = content.split("\n");
    });
  }
}

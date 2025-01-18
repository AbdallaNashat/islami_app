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
  //var args = ModalRoute.of(context)?.settings.arguments as HadithDetails;

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

  loadHadithData(dynamic hadithId) async {
    await rootBundle.loadString("assets/files/hadith$hadithId");
    setState(() {
      //List<String> HadithData  = content.split"\n");
    });
  }
}

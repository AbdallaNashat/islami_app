import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/themes/app_colors.dart';
import 'package:islami/features/layout/pages/quran/quran_details.dart';
import 'package:islami/features/layout/pages/quran/widget/recentely_card_widget.dart';
import 'package:islami/features/layout/pages/quran/widget/sura_card_widget.dart';
import 'package:islami/models/recent_data.dart';
import 'package:islami/models/sura_data.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<RecentData> recentDataList = [
    RecentData(
      suraNameEN: "Al-Anbiya",
      suraNameAR: "الأنبياء",
      suraVerses: "112 verses",
    ),
    RecentData(
        suraNameEN: "Al-fatiha", suraNameAR: "الفاتحة", suraVerses: "7 verses")
  ];

  List<SuraDetails> suraList = [
    SuraDetails(id: 1, nameEN: "Al-Fatiha", nameAR: "الفاتحه", verses: 7),
    SuraDetails(id: 2, nameEN: "Al-Baqarah", nameAR: "البقرة", verses: 286),
    SuraDetails(id: 3, nameEN: "Aal-E-Imran", nameAR: "آل عمران", verses: 200),
    SuraDetails(id: 4, nameEN: "An-Nisa'", nameAR: "النساء", verses: 176),
    SuraDetails(id: 5, nameEN: "Al-Ma'idah", nameAR: "المائدة", verses: 120),
    SuraDetails(id: 6, nameEN: "Al-An'am", nameAR: "الأنعام", verses: 165),
    SuraDetails(id: 7, nameEN: "Al-A'raf", nameAR: "الأعراف", verses: 206),
    SuraDetails(id: 8, nameEN: "Al-Anfal", nameAR: "الأنفال", verses: 75),
    SuraDetails(id: 9, nameEN: "At-Tawbah", nameAR: "التوبة", verses: 129),
    SuraDetails(id: 10, nameEN: "Yunus", nameAR: "يونس", verses: 109),
    SuraDetails(id: 11, nameEN: "Hud", nameAR: "هود", verses: 123),
    SuraDetails(id: 12, nameEN: "Yusuf", nameAR: "يوسف", verses: 111),
    SuraDetails(id: 13, nameEN: "Ar-Ra'd", nameAR: "الرعد", verses: 43),
    SuraDetails(id: 14, nameEN: "Ibrahim", nameAR: "إبراهيم", verses: 52),
    SuraDetails(id: 15, nameEN: "Al-Hijr", nameAR: "الحجر", verses: 99),
    SuraDetails(id: 16, nameEN: "An-Nahl", nameAR: "النحل", verses: 128),
    SuraDetails(id: 17, nameEN: "Al-Isra", nameAR: "الإسراء", verses: 111),
    SuraDetails(id: 18, nameEN: "Al-Kahf", nameAR: "الكهف", verses: 110),
    SuraDetails(id: 19, nameEN: "Maryam", nameAR: "مريم", verses: 98),
    SuraDetails(id: 20, nameEN: "Ta-Ha", nameAR: "طه", verses: 135),
    SuraDetails(id: 21, nameEN: "Al-Anbiya", nameAR: "الأنبياء", verses: 112),
    SuraDetails(id: 22, nameEN: "Al-Hajj", nameAR: "الحج", verses: 78),
    SuraDetails(id: 23, nameEN: "Al-Mu'minun", nameAR: "المؤمنون", verses: 118),
    SuraDetails(id: 24, nameEN: "An-Nur", nameAR: "النّور", verses: 64),
    SuraDetails(id: 25, nameEN: "Al-Furqan", nameAR: "الفرقان", verses: 77),
    SuraDetails(id: 26, nameEN: "Ash-Shu'ara", nameAR: "الشعراء", verses: 227),
    SuraDetails(id: 27, nameEN: "An-Naml", nameAR: "النّمل", verses: 93),
    SuraDetails(id: 28, nameEN: "Al-Qasas", nameAR: "القصص", verses: 88),
    SuraDetails(id: 29, nameEN: "Al-Ankabut", nameAR: "العنكبوت", verses: 69),
    SuraDetails(id: 30, nameEN: "Ar-Rum", nameAR: "الرّوم", verses: 60),
    SuraDetails(id: 31, nameEN: "Luqman", nameAR: "لقمان", verses: 34),
    SuraDetails(id: 32, nameEN: "As-Sajda", nameAR: "السجدة", verses: 30),
    SuraDetails(id: 33, nameEN: "Al-Ahzab", nameAR: "الأحزاب", verses: 73),
    SuraDetails(id: 34, nameEN: "Saba", nameAR: "سبأ", verses: 54),
    SuraDetails(id: 35, nameEN: "Fatir", nameAR: "فاطر", verses: 45),
    SuraDetails(id: 36, nameEN: "Ya-Sin", nameAR: "يس", verses: 83),
    SuraDetails(id: 37, nameEN: "As-Saffat", nameAR: "الصافات", verses: 182),
    SuraDetails(id: 38, nameEN: "Sad", nameAR: "ص", verses: 88),
    SuraDetails(id: 39, nameEN: "Az-Zumar", nameAR: "الزمر", verses: 75),
    SuraDetails(id: 40, nameEN: "Ghafir", nameAR: "غافر", verses: 85),
    SuraDetails(id: 41, nameEN: "Fussilat", nameAR: "فصّلت", verses: 54),
    SuraDetails(id: 42, nameEN: "Ash-Shura", nameAR: "الشورى", verses: 53),
    SuraDetails(id: 43, nameEN: "Az-Zukhruf", nameAR: "الزخرف", verses: 89),
    SuraDetails(id: 44, nameEN: "Ad-Dukhan", nameAR: "الدّخان", verses: 59),
    SuraDetails(id: 45, nameEN: "Al-Jathiya", nameAR: "الجاثية", verses: 37),
    SuraDetails(id: 46, nameEN: "Al-Ahqaf", nameAR: "الأحقاف", verses: 35),
    SuraDetails(id: 47, nameEN: "Muhammad", nameAR: "محمد", verses: 38),
    SuraDetails(id: 48, nameEN: "Al-Fath", nameAR: "الفتح", verses: 29),
    SuraDetails(id: 49, nameEN: "Al-Hujurat", nameAR: "الحجرات", verses: 18),
    SuraDetails(id: 50, nameEN: "Qaf", nameAR: "ق", verses: 45),
    SuraDetails(id: 51, nameEN: "Adh-Dhariyat", nameAR: "الذاريات", verses: 60),
    SuraDetails(id: 52, nameEN: "At-Tur", nameAR: "الطور", verses: 49),
    SuraDetails(id: 53, nameEN: "An-Najm", nameAR: "النجم", verses: 62),
    SuraDetails(id: 54, nameEN: "Al-Qamar", nameAR: "القمر", verses: 55),
    SuraDetails(id: 55, nameEN: "Ar-Rahman", nameAR: "الرحمن", verses: 78),
    SuraDetails(id: 56, nameEN: "Al-Waqia", nameAR: "الواقعة", verses: 96),
    SuraDetails(id: 57, nameEN: "Al-Hadid", nameAR: "الحديد", verses: 29),
    SuraDetails(id: 58, nameEN: "Al-Mujadila", nameAR: "المجادلة", verses: 22),
    SuraDetails(id: 59, nameEN: "Al-Hashr", nameAR: "الحشر", verses: 24),
    SuraDetails(id: 60, nameEN: "Al-Mumtahina", nameAR: "الممتحنة", verses: 13),
    SuraDetails(id: 61, nameEN: "As-Saff", nameAR: "الصف", verses: 14),
    SuraDetails(id: 62, nameEN: "Al-Jumu'a", nameAR: "الجمعة", verses: 11),
    SuraDetails(
        id: 63, nameEN: "Al-Munafiqun", nameAR: "المنافقون", verses: 11),
    SuraDetails(id: 64, nameEN: "At-Taghabun", nameAR: "التغابن", verses: 18),
    SuraDetails(id: 65, nameEN: "At-Talaq", nameAR: "الطلاق", verses: 12),
    SuraDetails(id: 66, nameEN: "At-Tahrim", nameAR: "التحريم", verses: 12),
    SuraDetails(id: 67, nameEN: "Al-Mulk", nameAR: "الملك", verses: 30),
    SuraDetails(id: 68, nameEN: "Al-Qalam", nameAR: "القلم", verses: 52),
    SuraDetails(id: 69, nameEN: "Al-Haqqa", nameAR: "الحاقة", verses: 52),
    SuraDetails(id: 70, nameEN: "Al-Ma'arij", nameAR: "المعارج", verses: 44),
    SuraDetails(id: 71, nameEN: "Nuh", nameAR: "نوح", verses: 28),
    SuraDetails(id: 72, nameEN: "Al-Jinn", nameAR: "الجن", verses: 28),
    SuraDetails(id: 73, nameEN: "Al-Muzzammil", nameAR: "المزمل", verses: 20),
    SuraDetails(id: 74, nameEN: "Al-Muddathir", nameAR: "المدثر", verses: 56),
    SuraDetails(id: 75, nameEN: "Al-Qiyama", nameAR: "القيامة", verses: 40),
    SuraDetails(id: 76, nameEN: "Al-Insan", nameAR: "الإنسان", verses: 31),
    SuraDetails(id: 77, nameEN: "Al-Mursalat", nameAR: "المرسلات", verses: 50),
    SuraDetails(id: 78, nameEN: "An-Naba", nameAR: "النبأ", verses: 40),
    SuraDetails(id: 79, nameEN: "An-Nazi'at", nameAR: "النازعات", verses: 46),
    SuraDetails(id: 80, nameEN: "Abasa", nameAR: "عبس", verses: 42),
    SuraDetails(id: 81, nameEN: "At-Takwir", nameAR: "التكوير", verses: 29),
    SuraDetails(id: 82, nameEN: "Al-Infitar", nameAR: "الإنفطار", verses: 19),
    SuraDetails(
        id: 83, nameEN: "Al-Mutaffifin", nameAR: "المطففين", verses: 36),
    SuraDetails(id: 84, nameEN: "Al-Inshiqaq", nameAR: "الإنشقاق", verses: 25),
    SuraDetails(id: 85, nameEN: "Al-Buruj", nameAR: "البروج", verses: 22),
    SuraDetails(id: 86, nameEN: "At-Tariq", nameAR: "الطارق", verses: 17),
    SuraDetails(id: 87, nameEN: "Al-A'la", nameAR: "الأعلى", verses: 19),
    SuraDetails(id: 88, nameEN: "Al-Ghashiya", nameAR: "الغاشية", verses: 26),
    SuraDetails(id: 89, nameEN: "Al-Fajr", nameAR: "الفجر", verses: 30),
    SuraDetails(id: 90, nameEN: "Al-Balad", nameAR: "البلد", verses: 20),
    SuraDetails(id: 91, nameEN: "Ash-Shams", nameAR: "الشمس", verses: 15),
    SuraDetails(id: 92, nameEN: "Al-Lail", nameAR: "الليل", verses: 21),
    SuraDetails(id: 93, nameEN: "Ad-Duha", nameAR: "الضحى", verses: 11),
    SuraDetails(id: 94, nameEN: "Ash-Sharh", nameAR: "الشرح", verses: 8),
    SuraDetails(id: 95, nameEN: "At-Tin", nameAR: "التين", verses: 8),
    SuraDetails(id: 96, nameEN: "Al-Alaq", nameAR: "العلق", verses: 19),
    SuraDetails(id: 97, nameEN: "Al-Qadr", nameAR: "القدر", verses: 5),
    SuraDetails(id: 98, nameEN: "Al-Bayyina", nameAR: "البينة", verses: 8),
    SuraDetails(id: 99, nameEN: "Az-Zalzala", nameAR: "الزلزلة", verses: 8),
    SuraDetails(id: 100, nameEN: "Al-Adiyat", nameAR: "العاديات", verses: 11),
    SuraDetails(id: 101, nameEN: "Al-Qaria", nameAR: "القارعة", verses: 11),
    SuraDetails(id: 102, nameEN: "At-Takathur", nameAR: "التكاثر", verses: 8),
    SuraDetails(id: 103, nameEN: "Al-Asr", nameAR: "العصر", verses: 3),
    SuraDetails(id: 104, nameEN: "Al-Humaza", nameAR: "الهمزة", verses: 9),
    SuraDetails(id: 105, nameEN: "Al-Fil", nameAR: "الفيل", verses: 5),
    SuraDetails(id: 106, nameEN: "Quraish", nameAR: "قريش", verses: 4),
    SuraDetails(id: 107, nameEN: "Al-Ma'un", nameAR: "الماعون", verses: 7),
    SuraDetails(id: 108, nameEN: "Al-Kawthar", nameAR: "الكوثر", verses: 3),
    SuraDetails(id: 109, nameEN: "Al-Kafiroon", nameAR: "الكافرون", verses: 6),
    SuraDetails(id: 110, nameEN: "An-Nasr", nameAR: "النصر", verses: 3),
    SuraDetails(id: 111, nameEN: "Al-Masad", nameAR: "المسد", verses: 5),
    SuraDetails(id: 112, nameEN: "Al-Ikhlas", nameAR: "الإخلاص", verses: 4),
    SuraDetails(id: 113, nameEN: "Al-Falaq", nameAR: "الفلق", verses: 5),
    SuraDetails(id: 114, nameEN: "An-Nas", nameAR: "الناس", verses: 6),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.quranBG,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Image.asset(AppAssets.islamiLogo),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                cursorColor: AppColors.primaryColor,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor,
                ),
                decoration: InputDecoration(
                  hintText: "Sura Name",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.titleTextColor,
                  ),
                  fillColor: AppColors.secondaryColor.withOpacity(0.5),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageIcon(
                      AssetImage(
                        AppAssets.quranIcon,
                      ),
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Text(
                "Most Recently",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor,
                ),
              ),
            ),
            SizedBox(
              height: 155,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => RecentlyCardWidget(
                  recentData: recentDataList[index],
                ),
                itemCount: recentDataList.length,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Text(
                "Sura Name",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.titleTextColor,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    QuranDetails.routeName,
                    arguments: suraList[index],
                  );
                },
                child: SuraCardWidget(
                  suraDetails: suraList[index],
                ),
              ),
              separatorBuilder: (context, index) => const Divider(
                indent: 60,
                endIndent: 60,
              ),
              itemCount: suraList.length,
            ),
          ],
        ),
      ),
    );
  }
}

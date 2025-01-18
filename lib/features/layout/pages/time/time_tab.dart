import 'package:flutter/material.dart';
import 'package:islami/features/layout/pages/time/widgets/azkar.dart';

import '../../../../core/constants/app_assets.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.timeBG),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Column(
            children: [
              const SizedBox(height: 170),
              // Prayer Time Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      // Date and Day
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "16 Jul, 2024",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Pray Time",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "09 Muh, 1446",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // Prayer Times
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildPrayerTime("Fajr", "04:00 AM"),
                          _buildPrayerTime("Dhuhr", "01:01 PM"),
                          _buildPrayerTime("ASR", "04:38 PM",
                              isHighlighted: true),
                          _buildPrayerTime("Maghrib", "07:57 PM"),
                          _buildPrayerTime("Isha", "09:00 PM"),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // Next Prayer
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Next Pray - 02:32",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.volume_up,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Azkar Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Azkar(
                      title: "Evening Azkar",
                      image: AppAssets.eveningAzkar,
                      onTap: () {},
                    ),
                    Azkar(
                      title: "Morning Azkar",
                      image: AppAssets.morningAzkar,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPrayerTime(String name, String time,
      {bool isHighlighted = false}) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isHighlighted ? Colors.black : Colors.black54,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          //padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: isHighlighted ? Colors.black87 : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            time,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isHighlighted ? Colors.white : Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}

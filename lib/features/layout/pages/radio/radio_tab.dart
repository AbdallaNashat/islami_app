import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/themes/app_colors.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab>
    with SingleTickerProviderStateMixin {
  final List<String> radios = [
    "Radio Ibrahim Al-Akdar",
    "Radio Al-Qaria Yassen",
    "Radio Ahmed Al-Trabulsi",
    "Radio Addokali Mohammad Alalim",
  ];
  late TabController _tabController;

  String currentBackground = AppAssets.radioBG;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {
        if (_tabController.index == 0) {
          currentBackground = AppAssets.radioBG; // Background for "Radio"
        } else if (_tabController.index == 1) {
          currentBackground = AppAssets.radioBG; // Background for "Reciters"
        }
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Dynamic Background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(currentBackground),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main Content
          Column(
            children: [
              const SizedBox(height: 160),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.secondaryColor,
                  ),
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: AppColors.primaryColor,
                    labelColor: AppColors.primaryColor,
                    unselectedLabelColor: AppColors.white,
                    dividerColor: Colors.transparent,
                    tabs: const [
                      Tab(text: "Radio"),
                      Tab(text: "Reciters"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Dynamic Tab Content
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                      itemCount: radios.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              image: DecorationImage(
                                image: AssetImage(AppAssets.bG),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  radios[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.secondaryColor,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.play_arrow),
                                      color: AppColors.secondaryColor,
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.volume_up),
                                      color: AppColors.secondaryColor,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: radios.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              image: DecorationImage(
                                image: AssetImage(AppAssets.bG),
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  radios[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.secondaryColor,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.play_arrow),
                                      color: AppColors.secondaryColor,
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.volume_up),
                                      color: AppColors.secondaryColor,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
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
}

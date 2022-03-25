import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/home/views/coomingsoon_view.dart';
import 'package:movie_app_flutter/app/modules/home/views/nowplaying_view.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
        height: Get.height,
        child: Column(
          children: [
            // SizedBox(height: 20),
            Container(
              // height: 50,
              width: Get.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(205, 207, 211, 1)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: TabBar(
                      unselectedLabelColor: Color.fromRGBO(205, 207, 211, 1),
                      labelColor: Colors.white,
                      indicatorColor: Colors.white,
                      indicatorWeight: 0.5,
                      indicator: BoxDecoration(
                        color: Color.fromRGBO(229, 25, 55, 1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      controller: tabController,
                      tabs: [
                        Tab(
                          child: Text(
                            'Now Showing',
                            style: TextStyle(fontFamily: 'SFPro', fontSize: 16),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Coming Soon',
                            style: TextStyle(fontFamily: 'SFPro', fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  NowplayingView(),
                  CoomingsoonView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

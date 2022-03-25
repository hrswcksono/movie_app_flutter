import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/home/views/tabbarPage.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Star Movie',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'SFPro',
              fontSize: 28,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.black,
              iconSize: 35,
            )
          ],
        ),
        body: TabBarPage());
  }
}

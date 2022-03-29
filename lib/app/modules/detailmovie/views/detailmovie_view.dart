import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/detail_view.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/reviews_view.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/showtime_view.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/widgets/tabbar_detail.dart';

import '../controllers/detailmovie_controller.dart';

class DetailmovieView extends GetView<DetailmovieController> {
  final _pageOptions = [DetailView(), ReviewsView(), ShowtimeView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: Get.height * 0.56,
            child: Stack(
              children: [
                Image.asset('assets/images/backdrop.png'),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRect(
                      child: Image.asset(
                    'assets/images/john_wick.png',
                    width: Get.width * 0.45,
                  )),
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: Get.width * 0.05,
                        right: Get.width * 0.05,
                        top: Get.height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/icons/back.png',
                          height: Get.width * 0.065,
                        ),
                        Image.asset(
                          'assets/icons/share.png',
                          height: Get.width * 0.065,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Get.width * 0.065, right: Get.width * 0.065),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text("John Wick 3: Parabellum",
                    style: TextStyle(
                        fontFamily: 'SFPro',
                        fontSize: Get.width * 0.07,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: Get.height * 0.015,
                ),
                Text("2hr 10m | R",
                    style: TextStyle(
                        fontFamily: 'SFPro',
                        fontSize: Get.width * 0.05,
                        color: Color.fromRGBO(135, 141, 149, 1))),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text("Action, Crime, Thriller",
                    style: TextStyle(
                        fontFamily: 'SFPro',
                        fontSize: Get.width * 0.05,
                        color: Color.fromRGBO(135, 141, 149, 1))),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("4.6/5  ",
                        style: TextStyle(
                            fontFamily: 'SFPro',
                            fontSize: Get.width * 0.07,
                            fontWeight: FontWeight.bold)),
                    GFRating(
                      size: Get.width * 0.07,
                      value: 3,
                      color: Color.fromRGBO(248, 196, 47, 1),
                      borderColor: Color.fromRGBO(248, 196, 47, 1),
                      onChanged: (value) {
                        // setState(() {
                        //   _rating = value;
                        // });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                TabBarDetail(),
                Obx((() {
                  return _pageOptions.elementAt(controller.indexPage.value);
                })),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

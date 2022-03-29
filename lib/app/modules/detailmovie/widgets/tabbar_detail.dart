import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/controllers/detailmovie_controller.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/widgets/button_tabbar.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/widgets/tabbar_detail_select.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/widgets/tabbar_detail_unselect.dart';

class TabBarDetail extends StatelessWidget {
  final detailC = Get.put(DetailmovieController());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: Get.height * 0.05,
        width: Get.width * 0.87,
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(205, 207, 211, 1)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonTabbar(
              title: 'Detail',
              stateValue: detailC.tabBar[0],
            ),
            ButtonTabbar(
              title: 'Reviews',
              stateValue: detailC.tabBar[1],
            ),
            ButtonTabbar(
              title: 'Showtime',
              stateValue: detailC.tabBar[2],
            )
          ],
        ));
  }
}

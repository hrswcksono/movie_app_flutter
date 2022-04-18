import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/detail/app_bar_subdetail.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/widgets/list_cast_crew.dart';
import 'package:movie_app_flutter/app/utils/constant.dart';

class CastAndCrewView extends GetView {
  int temp = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSubdetail(title: 'Cast & Crew'),
      body: Padding(
        padding:
            EdgeInsets.only(left: Get.width * 0.025, right: Get.width * 0.025),
        child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: 50,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              temp++;
              if (temp == 3) {
                temp = 0;
              }
              return ListCastCrew(
                film: Constant.listFilm[temp],
                image: 'assets/images/john_wick.png',
                name: Constant.listName[temp],
              );
            }),
      ),
    );
  }
}

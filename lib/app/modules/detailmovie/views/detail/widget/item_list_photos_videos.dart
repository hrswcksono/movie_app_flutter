import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_flutter/app/utils/constant.dart';

class ItemListPhotosVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(right: Get.width * 0.04, left: Get.width * 0.04),
      child: ListView.separated(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: Get.width * 0.92,
            child: Image.asset(
              Constant.listPhoto[index],
              fit: BoxFit.fitWidth,
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          height: Get.width * 0.04,
        ),
      ),
    );
  }
}

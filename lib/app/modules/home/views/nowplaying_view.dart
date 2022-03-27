import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/home/views/itemgridhome.dart';

class NowplayingView extends GetView {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: Get.width / Get.height * 1.1),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ItemGridHome();
        });
  }
}

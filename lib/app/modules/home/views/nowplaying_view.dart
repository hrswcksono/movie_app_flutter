import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/home/views/itemgridhome.dart';

class NowplayingView extends GetView {
  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        ItemGridHome(),
        ItemGridHome(),
        ItemGridHome(),
        ItemGridHome()
      ],
    );
  }
}

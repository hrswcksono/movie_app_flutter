import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/detail/app_bar_subdetail.dart';

class VideosView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSubdetail(title: 'Videos'),
      body: Center(
        child: Text(
          'VideosView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

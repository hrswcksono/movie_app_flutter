import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/detail/app_bar_subdetail.dart';

class CastAndCrewView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSubdetail(title: 'Cast & Crew'),
      body: Center(
        child: Text(
          'CastAndCrewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

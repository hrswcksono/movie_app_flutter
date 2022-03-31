import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/detail/app_bar_subdetail.dart';

class BlogView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSubdetail(title: 'Blogs About This Film'),
      body: Center(
        child: Text(
          'BlogView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

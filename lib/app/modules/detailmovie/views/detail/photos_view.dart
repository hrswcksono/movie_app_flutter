import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/detail/app_bar_subdetail.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/detail/widget/item_list_photos_videos.dart';

class PhotosView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSubdetail(title: 'Photos'),
      body: ItemListPhotosVideos(),
    );
  }
}

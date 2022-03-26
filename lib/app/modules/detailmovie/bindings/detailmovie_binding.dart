import 'package:get/get.dart';

import '../controllers/detailmovie_controller.dart';

class DetailmovieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailmovieController>(
      () => DetailmovieController(),
    );
  }
}

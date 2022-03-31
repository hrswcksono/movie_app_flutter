import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/detail/cast_and_crew_view.dart';

class DetailmovieController extends GetxController {
  //TODO: Implement DetailmovieController

  var tabBar = [true.obs, false.obs, false.obs];
  var indexPage = 0.obs;

  void resetPage() {
    for (var iter in tabBar) {
      if (iter.value == true) {
        iter.toggle();
      }
    }
  }

  void changeStateButton(RxBool temp) {
    resetPage();
    temp.toggle();
  }

  void handleButton(String temp) {
    switch (temp) {
      case 'Detail':
        changeStateButton(tabBar[0]);
        indexPage.value = 0;
        break;
      case 'Reviews':
        changeStateButton(tabBar[1]);
        indexPage.value = 1;
        break;
      case 'Showtime':
        changeStateButton(tabBar[2]);
        indexPage.value = 2;
        break;
    }
    print(indexPage.value);
  }

  @override
  void onInit() {
    super.onInit();
  }
}

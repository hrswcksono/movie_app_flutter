import 'package:get/get.dart';

class BaseController extends GetxController {
  //TODO: Implement BaseController

  var basePage = 0.obs;
  List<RxBool> botNav = [true.obs, false.obs, false.obs, false.obs];

  void resetPage() {
    for (var iter in botNav) {
      if (iter.value == true) {
        iter.toggle();
      }
    }
  }

  void movePage() {
    if (botNav[0].value == true) {
      basePage.value = 0;
    } else if (botNav[1].value == true) {
      basePage.value = 1;
    } else if (botNav[2].value == true) {
      basePage.value = 2;
    } else if (botNav[3].value == true) {
      basePage.value = 3;
    }
  }

  @override
  void onInit() {
    super.onInit();
  }
}

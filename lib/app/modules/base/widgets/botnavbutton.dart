import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/base/controllers/base_controller.dart';

class BotNavBar extends GetView<BaseController> {
  BotNavBar({required this.image, Key? key, required this.stateValue})
      : super(key: key);

  final String? image;
  final RxBool stateValue;
  @override
  Widget build(BuildContext context) {
    return Obx((() {
      return AnimatedContainer(
          duration: Duration(milliseconds: 2000),
          curve: Curves.bounceInOut,
          child: stateValue.value
              ? Container(
                  child: Image.asset(
                    image!.replaceAll('.png', '') + "-selected.png",
                    height: Get.width * 0.06,
                  ),
                )
              : InkWell(
                  onTap: () {
                    // onTap;
                    controller.resetPage();
                    stateValue.toggle();
                    controller.movePage();
                  },
                  child: Container(
                    child: Image.asset(
                      image!,
                      height: Get.width * 0.06,
                    ),
                  ),
                ));
    }));
  }
}

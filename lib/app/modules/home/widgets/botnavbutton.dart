import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BotNavBar extends StatelessWidget {
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
              ? InkWell(
                  onTap: () {
                    stateValue.toggle();
                  },
                  child: Container(
                    child: Image.asset(
                      image!.replaceAll('.png', '') + "-selected.png",
                      height: Get.width * 0.07,
                    ),
                  ),
                )
              : InkWell(
                  onTap: () {
                    stateValue.toggle();
                  },
                  child: Container(
                    child: Image.asset(
                      image!,
                      height: Get.width * 0.07,
                    ),
                  ),
                ));
    }));
  }
}

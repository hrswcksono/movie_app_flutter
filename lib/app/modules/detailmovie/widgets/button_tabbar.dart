import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/controllers/detailmovie_controller.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/widgets/tabbar_detail_select.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/widgets/tabbar_detail_unselect.dart';

class ButtonTabbar extends StatelessWidget {
  ButtonTabbar({Key? key, this.title, required this.stateValue})
      : super(key: key);

  final String? title;
  final RxBool stateValue;

  final detailC = Get.put(DetailmovieController());

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx(() {
      return AnimatedContainer(
        duration: Duration(milliseconds: 2000),
        curve: Curves.bounceInOut,
        child: stateValue.value
            ? TabBarDetailSelect(title: title)
            : InkWell(
                onTap: (() {
                  detailC.handleButton(title!);
                }),
                child: TabBarDetailUnselect(title: title)),
      );
    });
  }
}

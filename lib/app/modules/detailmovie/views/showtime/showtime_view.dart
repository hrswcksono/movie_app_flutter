import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/showtime/item_date.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/showtime/item_time.dart';
import 'package:movie_app_flutter/app/utils/constant.dart';

class ShowtimeView extends GetView {
  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (var i = 0; i < 6; i++) {
      children.add(ItemTime(
        distance: Constant.listDistance[i],
        time: Constant.listTime[i],
      ));
    }
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 20.0,
            right: Get.width * 0.065,
            left: Get.width * 0.065,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose Date",
                    style: TextStyle(
                        fontFamily: 'SFPro',
                        fontSize: Get.width * 0.05,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/choose_date.png',
                    height: 30,
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: Get.height * 0.1,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemBuilder: (
                BuildContext context,
                int index,
              ) =>
                  ItemDate(),
              separatorBuilder: (_, __) => SizedBox(
                    width: 10,
                  ),
              itemCount: 7),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.065,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Choose Cinema",
                  style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: Get.width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Paragon Cinema",
                      style: TextStyle(
                        fontFamily: 'SFPro',
                        fontSize: Get.width * 0.05,
                      ),
                    ),
                    Image.asset(
                      'assets/images/triangle-down.png',
                      height: 10,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        //offset: Offset(0, 4),
                        color: Color.fromRGBO(247, 247, 247, 1), //edited
                        spreadRadius: 5,
                        blurRadius: 10 //edited
                        )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "2D",
                  style: TextStyle(
                    color: Color.fromRGBO(135, 141, 149, 1),
                    fontFamily: 'SFPro',
                    fontSize: Get.width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              StaggeredGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 20,
                children: children,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}

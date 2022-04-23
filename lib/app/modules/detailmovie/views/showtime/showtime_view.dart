import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/showtime/item_date.dart';

class ShowtimeView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
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
          SizedBox(
            height: Get.height * 0.1,
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 5),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) => ItemDate(),
            ),
          ),
        ],
      ),
    );
  }
}

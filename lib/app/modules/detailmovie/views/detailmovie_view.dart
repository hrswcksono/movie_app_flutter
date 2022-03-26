import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/detailmovie_controller.dart';

class DetailmovieView extends GetView<DetailmovieController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: Get.height * 0.56,
          child: Stack(
            children: [
              Image.asset('assets/images/backdrop.png'),
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipRect(
                    child: Image.asset(
                  'assets/images/john_wick.png',
                  width: Get.width * 0.45,
                )),
              )
            ],
          ),
        ),
        Column(
          children: [
            Text("John Wick 3: Parabellum",
                style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: Get.width * 0.07,
                    fontWeight: FontWeight.bold)),
            Text("2hr 10m | R",
                style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: Get.width * 0.05,
                    color: Color.fromRGBO(135, 141, 149, 1))),
            Text("Action, Crime, Thriller",
                style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: Get.width * 0.05,
                    color: Color.fromRGBO(135, 141, 149, 1))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("4.6/5  ",
                    style: TextStyle(
                        fontFamily: 'SFPro',
                        fontSize: Get.width * 0.07,
                        fontWeight: FontWeight.bold)),
                GFRating(
                  size: Get.width * 0.07,
                  value: 3,
                  color: Color.fromRGBO(248, 196, 47, 1),
                  borderColor: Color.fromRGBO(248, 196, 47, 1),
                  onChanged: (value) {
                    // setState(() {
                    //   _rating = value;
                    // });
                  },
                ),
              ],
            )
          ],
        )
      ],
    ));
  }
}

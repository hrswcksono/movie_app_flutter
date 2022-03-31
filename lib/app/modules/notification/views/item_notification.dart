import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemNotification extends StatelessWidget {
  // final String? text;
  // final Image? image;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: Get.width * 0.025,
              left: Get.width * 0.05,
              right: Get.width * 0.05,
              bottom: Get.width * 0.02),
          child: Container(
            height: Get.height * 0.08,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/icon_notification.png',
                    height: Get.width * 0.1,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: Get.width * 0.6,
                  height: Get.height * 0.3,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Congrat! You booked John Wick 3 movie ticket successfully.',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        softWrap: false,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'SFPro',
                            color: Color.fromRGBO(87, 95, 107, 1),
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '10:48:25 AM',
                        style: TextStyle(
                            fontFamily: 'SFPro',
                            color: Color.fromRGBO(135, 141, 149, 1),
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        DottedLine()
      ],
    );
  }
}

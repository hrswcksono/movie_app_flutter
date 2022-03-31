import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubDetail extends GetView {
  SubDetail({required this.title, required this.button, Key? key})
      : super(key: key);

  final String title;
  final void Function() button;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontFamily: 'SFPro',
                fontSize: Get.width * 0.05,
                fontWeight: FontWeight.w500),
          ),
          InkWell(
            onTap: button,
            child: Text(
              'View All',
              style: TextStyle(
                  fontFamily: 'SFPro',
                  fontSize: Get.width * 0.045,
                  color: Color.fromRGBO(71, 207, 255, 1)),
            ),
          )
        ],
      ),
    );
  }
}

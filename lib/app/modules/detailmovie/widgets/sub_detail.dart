import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SubDetail extends StatelessWidget {
  SubDetail({required this.title});

  final String? title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(
                fontFamily: 'SFPro',
                fontSize: Get.width * 0.05,
                fontWeight: FontWeight.w500),
          ),
          Text(
            'View All',
            style: TextStyle(
                fontFamily: 'SFPro',
                fontSize: Get.width * 0.045,
                color: Color.fromRGBO(71, 207, 255, 1)),
          )
        ],
      ),
    );
  }
}

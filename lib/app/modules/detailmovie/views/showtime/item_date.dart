import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemDate extends StatelessWidget {
  ItemDate({required this.state, Key? key, required this.index})
      : super(key: key);

  final RxBool state;
  final int index;

  @override
  Widget build(BuildContext context) {
    var leftPadding = 0.0;
    if (index == 0) {
      leftPadding = Get.width * 0.065;
    }
    // TODO: implement build
    return Obx((() {
      return InkWell(
        onTap: () {
          state.toggle();
        },
        child: Padding(
          padding: EdgeInsets.only(left: leftPadding),
          child: Container(
            width: Get.width * 0.24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Color.fromRGBO(229, 25, 55, 1),
              boxShadow: [
                BoxShadow(
                    //offset: Offset(0, 4),
                    color: Color.fromRGBO(247, 247, 247, 1), //edited
                    spreadRadius: 5,
                    blurRadius: 10 //edited
                    )
              ],
              color:
                  state.value ? Colors.white : Color.fromRGBO(229, 25, 55, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                      fontFamily: 'SFPro',
                      fontSize: Get.width * 0.05,
                      color: state.value
                          ? Color.fromRGBO(93, 101, 113, 1)
                          : Colors.white),
                ),
                Text(
                  "Wed",
                  style: TextStyle(
                      fontFamily: 'SFPro',
                      fontSize: Get.width * 0.05,
                      color: state.value
                          ? Color.fromRGBO(135, 141, 149, 1)
                          : Colors.white),
                ),
              ],
            ),
          ),
        ),
      );
    }));
  }
}

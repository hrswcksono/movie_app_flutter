import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/ticket/views/extras_items_view.dart';

class TicketBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      height: Get.height * 0.102,
      child: Padding(
        padding: EdgeInsets.all(Get.width * 0.03),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'E4,E5 SELECTED',
                  style: TextStyle(
                    color: Color.fromRGBO(135, 141, 149, 1),
                    fontFamily: 'SFPro',
                    fontSize: 15,
                  ),
                ),
                Text(
                  '\$36.00',
                  style: TextStyle(
                    color: Color.fromRGBO(247, 36, 67, 1),
                    fontFamily: 'SFPro',
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              height: 47,
              width: Get.width * 0.359,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(229, 25, 55, 1), // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  Get.to(ExtrasItemsView());
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 18,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

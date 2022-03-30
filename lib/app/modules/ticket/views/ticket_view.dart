import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ticket_controller.dart';

class TicketView extends GetView<TicketController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(Get.width * 0.07),
        child: Container(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: [
                Image.asset('assets/images/backdrop.png'),
                Text(
                  'TicketView is working',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

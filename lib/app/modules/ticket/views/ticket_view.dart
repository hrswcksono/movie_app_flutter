import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ticket_controller.dart';

class TicketView extends GetView<TicketController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'TicketView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

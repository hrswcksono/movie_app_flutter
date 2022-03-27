import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ticket_controller.dart';

class TicketView extends GetView<TicketController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TicketView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TicketView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

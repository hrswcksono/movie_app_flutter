import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/ticket/widgets/ticket_appbar.dart';
import 'package:movie_app_flutter/app/modules/ticket/widgets/ticket_bottom_navigation.dart';

class ChoosePlaceView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TicketAppBar(
        title: "dsadas",
        center: true,
      ),
      body: Center(
        child: Text(
          'ChoosePlaceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: TicketBottomNavigation(),
    );
  }
}

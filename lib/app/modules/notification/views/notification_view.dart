import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/notification/views/item_notification.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ItemNotification();
          }),
    );
  }
}

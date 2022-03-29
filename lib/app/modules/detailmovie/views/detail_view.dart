import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DetailView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'DetailView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NowplayingView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'NowplayingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

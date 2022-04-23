import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ChangePasswordView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChangePasswordView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ChangePasswordView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

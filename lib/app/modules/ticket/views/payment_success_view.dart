import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PaymentSuccessView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaymentSuccessView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PaymentSuccessView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

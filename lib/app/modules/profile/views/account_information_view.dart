import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AccountInformationView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AccountInformationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AccountInformationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ExtrasItemsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExtrasItemsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ExtrasItemsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

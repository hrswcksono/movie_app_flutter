import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BlogView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlogView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BlogView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

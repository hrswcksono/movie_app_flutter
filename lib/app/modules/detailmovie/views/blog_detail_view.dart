import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BlogDetailView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlogDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BlogDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

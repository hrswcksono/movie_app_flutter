import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CastAndCrewView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CastAndCrewView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CastAndCrewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

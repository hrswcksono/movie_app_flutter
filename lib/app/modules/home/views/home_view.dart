import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Star Movie',
          style: TextStyle(color: Colors.black, fontFamily: 'SFPro'),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 35,
          )
        ],
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style:
              TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'SFPro'),
        ),
      ),
    );
  }
}

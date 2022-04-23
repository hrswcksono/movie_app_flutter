import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TransactionHistoryView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TransactionHistoryView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TransactionHistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

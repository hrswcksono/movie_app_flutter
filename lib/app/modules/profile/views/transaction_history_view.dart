import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/card_text_view.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/detail_card.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/item_transaction.dart';

class TransactionHistoryView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TransactionHistoryView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: Get.width * 0.06,
          left: Get.width * 0.04,
          right: Get.width * 0.04,
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: Get.height * 0.31,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 66, 140, 1),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                Positioned(
                  top: Get.width * 0.13,
                  right: 0,
                  child: Container(
                    height: Get.height * 0.1,
                    width: Get.width * 0.62,
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(0, 76, 154, 1)),
                    child: Text(''),
                  ),
                ),
                Positioned(
                  top: Get.width * 0.20,
                  child: Container(
                    height: Get.height * 0.1,
                    width: Get.width * 0.62,
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(0, 80, 162, 1)),
                    child: Text(''),
                  ),
                ),
                Positioned(
                  top: Get.width * 0.094,
                  right: Get.width * 0.1,
                  child: Image.asset(
                    'assets/images/visa.png',
                    height: Get.height * 0.03,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Get.height * 0.14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardTextView(title: '4243'),
                      CardTextView(title: '4243'),
                      CardTextView(title: '4243'),
                      CardTextView(title: '4243'),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: DetailCard(
                    textOne: 'CARD HOLDER',
                    textTwo: 'RISH TRAN',
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: DetailCard(
                    textOne: 'EXPIRES',
                    textTwo: '08/23',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return ItemTransaction(
                    title: 'John Wick 3: Parabellum',
                    tipe: 'Booked Ticket',
                    cost: '- \$54.00',
                    date: '24 MAY, 2019',
                    iconColor: Color.fromRGBO(218, 245, 255, 1),
                    costColor: Color.fromRGBO(229, 25, 55, 1),
                    image: 'assets/icons/bank_card.png',
                  );
                }),
          ],
        ),
      ),
    );
  }
}

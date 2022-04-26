import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/ticket/views/choose_place_view.dart';
import 'package:movie_app_flutter/app/modules/ticket/views/item_text.dart';

import '../controllers/ticket_controller.dart';

class TicketView extends GetView<TicketController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(Get.width * 0.07),
        child: InkWell(
          onTap: () => Get.to(ChoosePlaceView()),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(
                  'assets/images/backdrop.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          //offset: Offset(0, 4),
                          color: Color.fromRGBO(214, 216, 219, 1), //edited
                          spreadRadius: 1,
                          blurRadius: 6 //edited
                          )
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: Get.width * 0.07,
                    right: Get.width * 0.07,
                    top: Get.width * 0.06,
                    bottom: Get.width * 0.07,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ItemText(
                        title: 'John Wick 3: Parabellum',
                        size: 20,
                        mycolor: Colors.black,
                        style: FontWeight.w700,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ItemText(
                        title: 'THEATRE',
                        size: 18,
                        mycolor: Color.fromRGBO(135, 141, 149, 1),
                        style: null,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      ItemText(
                        title: 'Paragon Cinema',
                        size: 18,
                        mycolor: Colors.black,
                        style: FontWeight.w700,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ItemText(
                                title: 'DATE',
                                size: 15,
                                mycolor: Color.fromRGBO(135, 141, 149, 1),
                                style: null,
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              ItemText(
                                title: '24 May, 2019',
                                size: 15,
                                mycolor: Colors.black,
                                style: FontWeight.w700,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ItemText(
                                        title: 'Hall',
                                        size: 15,
                                        mycolor:
                                            Color.fromRGBO(135, 141, 149, 1),
                                        style: null,
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      ItemText(
                                        title: 'C',
                                        size: 15,
                                        mycolor: Colors.black,
                                        style: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 34,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ItemText(
                                        title: 'Row',
                                        size: 15,
                                        mycolor:
                                            Color.fromRGBO(135, 141, 149, 1),
                                        style: null,
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      ItemText(
                                        title: 'E',
                                        size: 15,
                                        mycolor: Colors.black,
                                        style: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ItemText(
                                title: 'TIME',
                                size: 15,
                                mycolor: Color.fromRGBO(135, 141, 149, 1),
                                style: null,
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              ItemText(
                                title: '8:30 - 10:00 AM',
                                size: 15,
                                mycolor: Colors.black,
                                style: FontWeight.w700,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              ItemText(
                                title: 'SEAT',
                                size: 15,
                                mycolor: Color.fromRGBO(135, 141, 149, 1),
                                style: null,
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              ItemText(
                                title: 'E4, E5',
                                size: 15,
                                mycolor: Colors.black,
                                style: FontWeight.w700,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 245, 1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Get.width * 0.1,
                      right: Get.width * 0.1,
                      top: Get.width * 0.05,
                      bottom: Get.width * 0.05),
                  child: Column(
                    children: [
                      Image.asset('assets/images/qr_code.png'),
                      Row(
                        children: [
                          ItemText(
                            title: 'P A I',
                            size: 16,
                            mycolor: Colors.black,
                            style: FontWeight.w700,
                          ),
                          Spacer(),
                          ItemText(
                            title: '3 1 1 7 7 0 1 3 2 0 6 3 7 5',
                            size: 16,
                            mycolor: Colors.black,
                            style: FontWeight.w700,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

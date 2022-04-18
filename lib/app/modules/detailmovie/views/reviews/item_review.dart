import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/rating/gf_rating.dart';

class ItemReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GFRating(
                  size: Get.width * 0.06,
                  value: 4,
                  color: Color.fromRGBO(248, 196, 47, 1),
                  borderColor: Color.fromRGBO(248, 196, 47, 1),
                  onChanged: (value) {
                    // setState(() {
                    //   _rating = value;
                    // });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "John Wick Chapter 3 offers great action and a more ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff in-depth at his World in comparison to the first two entries.",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  softWrap: false,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontFamily: 'SFPro',
                      color: Color.fromRGBO(87, 95, 107, 1)),
                ),
              ],
            ),
          ),
          // height: 100,
          width: Get.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
        ),
        Image.asset(
          "assets/images/triangle.png",
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/user_chat.png',
                  height: Get.width / 8,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Devin Hopkins",
                    style: TextStyle(fontFamily: "SFPro", fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "May 20, 2019",
                    style: TextStyle(
                        fontFamily: "SFPro",
                        fontSize: 13,
                        color: Color.fromRGBO(135, 141, 149, 1)),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

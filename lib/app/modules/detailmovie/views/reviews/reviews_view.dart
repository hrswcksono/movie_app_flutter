import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/components/rating/gf_rating.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/views/reviews/item_review.dart';

class ReviewsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("4.6/5  ",
                style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: Get.width * 0.07,
                    fontWeight: FontWeight.bold)),
            GFRating(
              size: Get.width * 0.07,
              value: 4,
              color: Color.fromRGBO(248, 196, 47, 1),
              borderColor: Color.fromRGBO(248, 196, 47, 1),
              onChanged: (value) {
                // setState(() {
                //   _rating = value;
                // });
              },
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "38 Reviews",
          style: TextStyle(
              fontFamily: "SFPro",
              color: Color.fromRGBO(135, 141, 149, 1),
              fontSize: 18),
        ),
        SizedBox(
          height: 35,
        ),
        ItemReview(),
        SizedBox(
          height: 10,
        ),
        ItemReview(),
        SizedBox(
          height: 100,
        )
      ],
    );
  }
}

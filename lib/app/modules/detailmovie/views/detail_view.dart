import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/widgets/list_cast_crew.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/widgets/item_list_photos.dart';
import 'package:movie_app_flutter/app/modules/detailmovie/widgets/sub_detail.dart';
import 'package:movie_app_flutter/app/utils/constant.dart';

class DetailView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: Get.height * 0.013),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Synopsis',
                style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: Get.width * 0.05,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: Get.width * 0.03,
            ),
            Text(
              'In this third installment of the adrenaline-fueled action franchise, super-assassin John Wick returns with a 14 million price tag on his head and an army of bounty-hunting...',
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              softWrap: false,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontFamily: 'SFPro', color: Color.fromRGBO(87, 95, 107, 1)),
            ),
            SizedBox(
              height: Get.width * 0.035,
            ),
            SubDetail(
              title: 'Cast & Crew',
            ),
            ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return ListCastCrew(
                    film: Constant.listFilm[index],
                    image: 'assets/images/john_wick.png',
                    name: Constant.listName[index],
                  );
                }),
            SubDetail(
              title: 'Photos',
            ),
            SizedBox(
              height: Get.height * 0.1,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(top: 5),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) =>
                    ItemListPhotos(image: Constant.listPhoto[index]),
              ),
            ),
            SubDetail(
              title: 'Videos',
            ),
            SubDetail(
              title: 'Blogs About This Film',
            ),
          ],
        ),
      ),
    );
  }
}

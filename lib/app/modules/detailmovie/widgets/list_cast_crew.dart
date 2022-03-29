import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCastCrew extends StatelessWidget {
  ListCastCrew({required this.image, required this.name, required this.film});

  final String? image;
  final String? name;
  final String? film;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 70,
      child: Padding(
        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              child: ClipRRect(
                child: Image.asset(image!),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            SizedBox(
              width: 1,
            ),
            Text(
              name!,
              style: TextStyle(
                  fontFamily: 'SFPro',
                  fontSize: Get.width * 0.04,
                  color: Colors.black),
            ),
            Spacer(),
            Container(
              width: Get.width * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "...",
                    style: TextStyle(
                        fontFamily: 'SFPro',
                        fontSize: Get.width * 0.05,
                        color: Color.fromRGBO(183, 187, 191, 1)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    film!,
                    style: TextStyle(
                        fontFamily: 'SFPro',
                        fontSize: Get.width * 0.04,
                        color: Color.fromRGBO(183, 187, 191, 1)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

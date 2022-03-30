import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ItemListPhotos extends StatelessWidget {
  ItemListPhotos({required this.image});
  final String? image;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: Get.width * 0.3,
      child: Image.asset(image!),
    );
  }
}

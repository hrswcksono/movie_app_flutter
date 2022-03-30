import 'package:flutter/cupertino.dart';

class ItemText extends StatelessWidget {
  ItemText(
      {required this.title,
      required this.size,
      required this.mycolor,
      required this.style});

  final String? title;
  final double? size;
  final Color? mycolor;
  final FontWeight? style;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      title!,
      style: TextStyle(
        color: mycolor,
        fontFamily: 'SFPro',
        fontSize: size,
        fontWeight: style,
      ),
    );
  }
}

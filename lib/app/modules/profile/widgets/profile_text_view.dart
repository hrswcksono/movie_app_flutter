import 'package:flutter/cupertino.dart';

class ProfileTextView extends StatelessWidget {
  ProfileTextView({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'SFPro',
          fontSize: 14,
          color: Color.fromRGBO(135, 141, 149, 1),
          // fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  BaseAppBar({required this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title!,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'SFPro',
          fontSize: 24.5,
        ),
      ),
      centerTitle: false,
      actions: [
        if (title! == 'Star Movie') ...[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 35,
          )
        ],
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

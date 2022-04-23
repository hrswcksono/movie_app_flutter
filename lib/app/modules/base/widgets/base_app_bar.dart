import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/profile/views/sign_up_view.dart';

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
        if (title! == 'Profile') ...[
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: InkWell(
                onTap: (() {
                  Get.to(SignUpView());
                }),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SFPro',
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          )
        ]
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

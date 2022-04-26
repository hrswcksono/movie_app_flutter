import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TicketAppBar extends StatelessWidget implements PreferredSizeWidget {
  TicketAppBar({required this.title, required this.center});

  final String title;
  final bool center;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      backgroundColor: Colors.white,
      title: Row(
        children: [
          if (title == 'Extra Items' || title == 'Payments') ...[
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'SFPro',
                fontSize: 20,
              ),
            ),
          ],
          if (title != 'Extra Items' || title != 'Payments') ...[
            Image.asset(
              'assets/icons/image_appbar.png',
              height: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Wick 3: Parabellum',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SFPro',
                    fontSize: 18,
                  ),
                ),
                Text(
                  '8:30 - 10:00 AM in 24 May, 2019',
                  style: TextStyle(
                    color: Color.fromRGBO(153, 158, 165, 1),
                    fontFamily: 'SFPro',
                    fontSize: 15,
                  ),
                ),
              ],
            )
          ],
        ],
      ),
      leading: IconButton(
        icon: Image.asset(
          'assets/icons/back_black.png',
          height: 20,
        ),
        onPressed: () => Get.back(),
      ),
      centerTitle: center,
      // actions: [],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

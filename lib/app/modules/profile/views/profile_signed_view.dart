import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_flutter/app/modules/profile/views/account_information_view.dart';
import 'package:movie_app_flutter/app/modules/profile/views/transaction_history_view.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_app_bar.dart';
import 'package:movie_app_flutter/app/modules/profile/widgets/profile_signed_button.dart';

class ProfileSignedView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
        center: false,
        title: 'Profile',
      ),
      body: Column(children: [
        Spacer(
          flex: 2,
        ),
        Container(
          width: 160.0,
          height: 160.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/photo_profile.png"),
            ),
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rish Tran',
              style: TextStyle(
                fontFamily: 'SFPro',
                fontSize: 30,
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              decoration:
                  BoxDecoration(color: Color.fromRGBO(209, 250, 233, 1)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'MEMBER',
                  style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 22,
                    color: Color.fromRGBO(25, 229, 143, 1),
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
        Text(
          'thinhtran2406@gmail.com',
          style: TextStyle(
            fontFamily: 'SFPro',
            fontSize: 20,
            color: Color.fromRGBO(135, 141, 149, 1),
            // fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  '123',
                  style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 35,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'TOTAL POINTS',
                  style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 18,
                    color: Color.fromRGBO(135, 141, 149, 1),
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                width: 3,
                height: 58,
                color: Colors.black,
              ),
            ),
            Column(
              children: [
                Text(
                  '06',
                  style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 35,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'MOVIES WATCHED',
                  style: TextStyle(
                    fontFamily: 'SFPro',
                    fontSize: 18,
                    color: Color.fromRGBO(135, 141, 149, 1),
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
        Spacer(),
        InkWell(
          onTap: (() {
            Get.to(AccountInformationView());
          }),
          child: ProfileSignedButton(
            image: 'assets/icons/account_information.png',
            text: 'Account Information',
          ),
        ),
        Spacer(),
        InkWell(
          onTap: (() {
            Get.to(TransactionHistoryView());
          }),
          child: ProfileSignedButton(
            image: 'assets/icons/transaction_history.png',
            text: 'Transaction History',
          ),
        ),
        Spacer(),
        ProfileSignedButton(
          image: 'assets/icons/rating_app.png',
          text: 'Rating App',
        ),
        Spacer(),
        ProfileSignedButton(
          image: 'assets/icons/privacy_policy.png',
          text: 'Privacy Policy',
        ),
        Spacer(
          flex: 9,
        ),
      ]),
    );
  }
}

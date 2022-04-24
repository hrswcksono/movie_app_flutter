import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemTransaction extends StatelessWidget {
  ItemTransaction(
      {required this.title,
      required this.tipe,
      required this.cost,
      required this.image,
      required this.date,
      required this.iconColor,
      required this.costColor,
      Key? key})
      : super(key: key);

  final String title;
  final String tipe;
  final String cost;
  final String image;
  final String date;
  final Color iconColor;
  final Color costColor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          // boxShadow: [
          //   BoxShadow(
          //       color: Colors.grey, //edited
          //       spreadRadius: 4,
          //       blurRadius: 10),
          // ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: iconColor,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  height: 10,
                  width: 10,
                  child: Image.asset(
                    image,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    tipe,
                    style: TextStyle(
                      fontFamily: 'SFPRO',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'SFPRO',
                        fontSize: 17,
                        color: Color.fromRGBO(135, 141, 149, 1)
                        // fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    cost,
                    style: TextStyle(
                        fontFamily: 'SFPRO',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: costColor),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                        fontFamily: 'SFPRO',
                        fontSize: 17,
                        color: Color.fromRGBO(135, 141, 149, 1)
                        // fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'contants.dart';

class Item extends StatelessWidget {
  final String title;
  final DateTime dateTime;
  final String location;

  Item({this.dateTime, this.location, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      width: double.infinity,
      color: secondaryGold,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Text(
              dateTime.day.toString(),
              style: kListItemDay,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: kListItemTitle,
                ),
                Text(
                  location,
                  style: kListItemLocation,
                ),
                Text(
                  dateTime.hour.toString(),
                  style: kListItemLocation,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

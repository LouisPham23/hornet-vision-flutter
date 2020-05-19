import 'package:flutter/material.dart';
import 'contants.dart';

class Event extends StatelessWidget {
  final String title;
  final DateTime dateTime;
  final String location;
  final String img;

  Event({this.dateTime, this.location, this.title, this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 149,
      margin: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              img,
              height: 144,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: gray300,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  title,
                  style: kCardTitle,
                ),
                Text(
                  location,
                  style: kCardLocation,
                ),
                Text(
                  dateTime.hour.toString(),
                  style: kCardTime,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

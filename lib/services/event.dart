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
      margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                margin: EdgeInsets.only(top: 130),
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
                      textAlign: TextAlign.center,
                      style: kCardLocation,
                    ),
                    Text(
                      dateTime.hour.toString(),
                      style: kCardTime,
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  img,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

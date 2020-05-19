import 'package:flutter/material.dart';
import '../services/contants.dart';
import '../services/event.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Event> events = [
    Event(
      title: "Marry Doe",
      location: "Union Red Wood Room",
      dateTime: DateTime.now(),
      img: 'assets/images/music.jpeg',
    ),
    Event(
      title: "Marry Doe",
      location: "Union Red Wood Room",
      dateTime: DateTime.now(),
      img: 'assets/images/music.jpeg',
    ),
  ];

  Widget _buildToday() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Today', style: kRegTitle),
          Text('Features', style: kBoldTitle),
          Container(
            // child: ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: events.toList(),

            // ),
            child: Event(
              dateTime: DateTime.now(),
              title: "Testing Card",
              img: 'assets/images/music.jpeg',
              location: '123 schill street',
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _buildToday(),
      ],
    );
  }
}

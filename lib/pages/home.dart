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

  List<Event> eventsThisWeek = [
    Event(
      title: "Bastketball",
      location: "CSUS main gym",
      dateTime: DateTime.now(),
      img: 'assets/images/basket.jpeg',
    ),
    Event(
      title: "Bastketball",
      location: "CSUS main gym",
      dateTime: DateTime.now(),
      img: 'assets/images/basket.jpeg',
    ),
  ];

  List<Event> eventsThisMonth = [
    Event(
      title: "Food Pantry",
      location: "Library Quads",
      dateTime: DateTime.now(),
      img: 'assets/images/food.jpg',
    ),
    Event(
      title: "Food Pantry",
      location: "Library Quads",
      dateTime: DateTime.now(),
      img: 'assets/images/food.jpg',
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
            // child: Event(
            //   dateTime: DateTime.now(),
            //   title: "Testing Card",
            //   img: 'assets/images/music.jpeg',
            //   location: '123 schill street',
            // ),
            child: Row(
              children: events.toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThisWeek() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('This Week', style: kRegTitle),
          Text('Events', style: kBoldTitle),
          Container(
            child: Row(
              children: eventsThisWeek.toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThisMonth() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('This Month', style: kRegTitle),
          Text('Events', style: kBoldTitle),
          Container(
            child: Row(
              children: eventsThisMonth.toList(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildToday(),
          _buildThisWeek(),
          _buildThisMonth(),
        ],
      ),
    );
  }
}

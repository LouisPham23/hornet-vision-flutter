import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../services/contants.dart';
import '../services/item.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  List<Item> items = [
    Item(
      dateTime: DateTime.now(),
      title: "Basketball",
      location: "Sac State vs UC Davis",
    ),
    Item(
      dateTime: DateTime.now(),
      title: "Basketball",
      location: "Sac State vs UC Davis",
    ),
    Item(
      dateTime: DateTime.now(),
      title: "Basketball",
      location: "Sac State vs UC Davis",
    ),
    Item(
      dateTime: DateTime.now(),
      title: "Basketball",
      location: "Sac State vs UC Davis",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: gray100,
              child: TableCalendar(
                initialCalendarFormat: CalendarFormat.month,
                calendarController: _calendarController,
                calendarStyle: CalendarStyle(
                  todayColor: secondaryGreen,
                  selectedColor: primaryGold,
                  todayStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Column(
              children: items.toList(),
            ),
          ],
        ),
      ),
    );
  }
}

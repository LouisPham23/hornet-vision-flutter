import 'package:flutter/material.dart';
import 'package:hornet_vision_flutter/services/ticket_utils/ticket.dart';
import '../contants.dart';

class TicketView extends StatelessWidget {
  final List<Ticket> tickets;

  TicketView({Key key, this.tickets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 20,
        childAspectRatio: 2,
      ),
      itemCount: tickets.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: gray300),
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Text(
                  tickets[index].Title,
                  style: kRegTitle,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(tickets[index].Description),
              ],
            ),
          ),
        );
      },
    );
  }
}

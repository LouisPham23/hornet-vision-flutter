import 'package:flutter/material.dart';
import 'package:hornet_vision_flutter/services/ticket_utils/ticket.dart';
import 'package:hornet_vision_flutter/services/ticket_utils/ticket_view.dart';
import '../services/ticket_utils/ticket_http_service.dart';

class MapOverView extends StatefulWidget {
  @override
  _MapOverViewState createState() => _MapOverViewState();
}

class _MapOverViewState extends State<MapOverView> {
  TicketHttpService service = TicketHttpService();

  Future<List<Ticket>> tickets;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Ticket>>(
      future: service.getTickets(),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);
        return snapshot.hasData
            ? TicketView(tickets: snapshot.data)
            : Center(child: CircularProgressIndicator());
      },
    );
  }
}

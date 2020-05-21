import './ticket.dart';
import 'dart:convert';
import 'package:http/http.dart';

class TicketHttpService {
  final String url = 'https://csc174proj.herokuapp.com/ticket';

  Future<List<Ticket>> getTickets() async {
    final res = await get(url);
    List<Ticket> tickets;
    try {
      //Decode json
      List<dynamic> body = jsonDecode(res.body);
      //Map json to dart object list
      tickets = body.map((dynamic item) => Ticket.fromJson(item)).toList();
      return tickets;
    } catch (e) {
      return tickets;
    }
  }
}

import 'package:json_annotation/json_annotation.dart';

part 'ticket.g.dart';

@JsonSerializable()
class Ticket {
  final String Title;
  final String Ticket_type;
  final int Ticket_number;
  final int Priority;
  final int Status_Id;
  final String Created_By;
  final String Assigned_To;
  final DateTime Assigned_Date;
  final DateTime Deadline_Date;
  final String Description;

  Ticket({
    this.Title,
    this.Ticket_type,
    this.Ticket_number,
    this.Priority,
    this.Status_Id,
    this.Created_By,
    this.Assigned_To,
    this.Assigned_Date,
    this.Deadline_Date,
    this.Description,
  });

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
  Map<String, dynamic> toJson() => _$TicketToJson(this);
}

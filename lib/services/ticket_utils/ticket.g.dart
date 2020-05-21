// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ticket _$TicketFromJson(Map<String, dynamic> json) {
  return Ticket(
    Title: json['Title'] as String,
    Ticket_type: json['Ticket_type'] as String,
    Ticket_number: json['Ticket_number'] as int,
    Priority: json['Priority'] as int,
    Status_Id: json['Status_Id'] as int,
    Created_By: json['Created_By'] as String,
    Assigned_To: json['Assigned_To'] as String,
    Assigned_Date: json['Assigned_Date'] == null
        ? null
        : DateTime.parse(json['Assigned_Date'] as String),
    Deadline_Date: json['Deadline_Date'] == null
        ? null
        : DateTime.parse(json['Deadline_Date'] as String),
    Description: json['Description'] as String,
  );
}

Map<String, dynamic> _$TicketToJson(Ticket instance) => <String, dynamic>{
      'Title': instance.Title,
      'Ticket_type': instance.Ticket_type,
      'Ticket_number': instance.Ticket_number,
      'Priority': instance.Priority,
      'Status_Id': instance.Status_Id,
      'Created_By': instance.Created_By,
      'Assigned_To': instance.Assigned_To,
      'Assigned_Date': instance.Assigned_Date?.toIso8601String(),
      'Deadline_Date': instance.Deadline_Date?.toIso8601String(),
      'Description': instance.Description,
    };

import 'package:sportify_flutter/model/sport_field.dart';
import 'package:sportify_flutter/model/user.dart';

class FieldOrder {
  SportField field;
  User user;
  String selectedDate;
  List<String> selectedTime;
  bool paidStatus;

  FieldOrder(
      {required this.field,
      required this.user,
      required this.selectedDate,
      required this.selectedTime,
      this.paidStatus = false});
}

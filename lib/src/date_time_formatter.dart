import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeFormatter extends StatelessWidget {
  var Time;

  TimeFormatter({required this.Time});

  @override
  Widget build(BuildContext context) {
    if (Time == null) {
      return Text(" ");
    } else {
      var TimeToDate = Time.toDate();
      return Text(
        (TimeToDate.hour.toInt() >= 12
            ? (TimeToDate.hour.toInt() - 11)
            : TimeToDate.hour.toInt() == 00
            ? 12
            : TimeToDate.hour.toInt())
            .toString() +
            ":" +
            TimeToDate.minute.toString() +
            " " +
            (TimeToDate.hour.toInt() >= 12 ? "pm" : "am"),
        style: const TextStyle(color: Colors.grey, fontSize: 15),
      );
    }
  }
}

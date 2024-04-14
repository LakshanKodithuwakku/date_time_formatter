import 'package:flutter/material.dart';

class TimeFormatter extends StatelessWidget {
  final time;

  TimeFormatter({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (time == null) {
      return const Text("pass your timestamp object");
    } else {
      var timeToDate = time.toDate();
      return Text(
        (timeToDate.hour.toInt() >= 12
                    ? (timeToDate.hour.toInt() - 11)
                    : timeToDate.hour.toInt() == 00
                        ? 12
                        : timeToDate.hour.toInt())
                .toString() +
            ":" +
            timeToDate.minute.toString() +
            " " +
            (timeToDate.hour.toInt() >= 12 ? "pm" : "am"),
        style: const TextStyle(color: Colors.grey, fontSize: 15),
      );
    }
  }
}

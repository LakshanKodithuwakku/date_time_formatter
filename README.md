This package takes UNIX (milliseconds) timestamps and converts them to pretty, human-readable time and date formats.

## Using
Add the package to your pubspec.yaml
```dart
dependencies:
date_time_formatter 0.0.2
```
Import the library in a .dart file
```dart
import 'package:date_time_formatter/date_time_formatter.dart';
```
Format an arbitrary UNIX timestamp (int type, milliseconds since epoch) with TimeFormatter(Time:)
If you using Firebase for the project you got the time and date in timestamp format. Then you should convert it into a human-readable format.
So simply pass the data get from firebase to this like bellow

Timestamp(seconds, nanoseconds) 
```dart
TimeFormatter(
Time: Timestamp(1659089683,98000000),
),
```
## Formats
This have only one format for the time 
Ex: 7:00 am
    12:00 pm

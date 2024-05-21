import 'package:intl/intl.dart';

final DateFormat _dateFormat = DateFormat("yyyy-MM-dd");
final DateFormat _dateTimeFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
final DateFormat _humanDateFormat = DateFormat("dd-MM-yyyy");
final DateFormat _moreHumanDateFormat = DateFormat("dd MMMM yyyy");
final DateFormat _humanDateTimeFormat = DateFormat("dd-MM-yyyy HH:mm:ss");

extension DateUtil on DateTime {
  String get toHumanDate {
    return _humanDateFormat.format(this);
  }

  String get toServerDate {
    return _dateFormat.format(this);
  }
}

extension DateUtilString on String {
  String get toHumanDate {
    return _humanDateFormat.format(_dateFormat.parse(this));
  }

  String get toMoreHumanDate {
    return _humanDateFormat.format(_dateFormat.parse(this));
  }

  String get toHumanDateTime {
    return _humanDateTimeFormat.format(_dateTimeFormat.parse(this));
  }

  int getHourDifferenceFromCurrentDate() {
    var date = _dateTimeFormat.parse(this);
    var currentDate = DateTime.now();
    var hours = currentDate.difference(date).inHours;
    return hours;
  }
}

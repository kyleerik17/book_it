import 'package:intl/intl.dart';

class DateUtil2 {
  static DateFormat _displayedDateFormat = DateFormat("dd/MM/yyyy");
  static DateFormat _serverDateFormat = DateFormat("yyyy-MM-dd");
  static DateFormat _serverDateTimeFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  static DateFormat _displayedDateTimeFormat =
      DateFormat("dd/MM/yyyy HH:mm:ss");
  static DateFormat _timeFormat = DateFormat("HH:mm:ss");

  static String getDisplayedDate(DateTime dateTime) {
    return _displayedDateFormat.format(dateTime);
  }

  static String toServerDate(DateTime dateTime) {
    return _serverDateFormat.format(dateTime);
  }

  static String toServerDateTime(DateTime dateTime) {
    return _serverDateTimeFormat.format(dateTime);
  }

  static String getDisplayedDateFromServerDatetime(String date) {
    return _displayedDateTimeFormat.format(_serverDateTimeFormat.parse(date));
  }

  static String displayTime(String date) {
    var formattedDate = _serverDateTimeFormat.parseStrict(date);
    return _timeFormat.format(formattedDate);
  }

  static DateTime fromServerDateTimeFormat(String date) {
    return _serverDateTimeFormat.parse(date);
  }

  static DateTime fromServerDate(String date) {
    return _serverDateFormat.parse(date);
  }

  static bool isFourHourDifference(
    String dateReservation,
    String heureLimitAnnulation,
  ) {
    DateTime _currentDate = DateTime.now();
    String _sDateReservation = "$dateReservation $heureLimitAnnulation";
    DateTime _dateReservation = _serverDateTimeFormat.parse(_sDateReservation);
    return _currentDate.isBefore(_dateReservation);
  }

  static bool isSameDay(String date) {
    DateTime _currentDate = DateTime.now();
    DateTime _date = _serverDateFormat.parse(date);
    return _currentDate.day == _date.day &&
        _currentDate.month == _date.month &&
        _currentDate.year == _date.year;
  }

  static bool isSameDayFromDateTime(DateTime date) {
    DateTime _currentDate = DateTime.now();
    return _currentDate.day == date.day &&
        _currentDate.month == date.month &&
        _currentDate.year == date.year;
  }

  static getAge(String dateNaissance) {
    DateTime _dateNaissance = _serverDateFormat.parse(dateNaissance);
    return DateTime.now().year - _dateNaissance.year;
  }
}

extension DateTimeExtension on DateTime? {
  bool? isAfterOrEqualTo(DateTime dateTime) {
    final date = this;
    if (date != null) {
      final isAtSameMomentAs = dateTime.isAtSameMomentAs(date);
      return isAtSameMomentAs | date.isAfter(dateTime);
    }
    return null;
  }

  bool? isBeforeOrEqualTo(DateTime dateTime) {
    final date = this;
    if (date != null) {
      final isAtSameMomentAs = dateTime.isAtSameMomentAs(date);
      return isAtSameMomentAs | date.isBefore(dateTime);
    }
    return null;
  }

  bool? isBetween(
    DateTime fromDateTime,
    DateTime toDateTime,
  ) {
    final date = this;
    if (date != null) {
      final isAfter = date.isAfterOrEqualTo(fromDateTime) ?? false;
      final isBefore = date.isBeforeOrEqualTo(toDateTime) ?? false;
      return isAfter && isBefore;
    }
    return null;
  }
}

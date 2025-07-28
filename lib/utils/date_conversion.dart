import 'package:intl/intl.dart';

class DateTimeConversion {
  DateTimeConversion._internal();

  static final DateTimeConversion _instance = DateTimeConversion._internal();

  factory DateTimeConversion() {
    return _instance;
  }

  /// Format 08:00 AM
  static String parseShiftTime(String inputDate) {
    try {
      DateTime parsedDate = DateTime.parse(inputDate);
      DateTime localDate = parsedDate.toLocal();
      String formattedTime = DateFormat('hh:mm a').format(localDate);
      return formattedTime;
    } catch (e) {
      throw FormatException("Invalid DateTime format: $inputDate");
    }
  }

  ///Format 12th Jun
  static String parseShiftDay(String inputDateTime) {
    try {
      DateTime dateTime = DateTime.parse(inputDateTime);
      String formattedDate = DateFormat('d EEE').format(dateTime);
      return formattedDate;
    } on Exception catch (e) {
      throw FormatException("Invalid DateTime format: $inputDateTime");
    }
  }

  ///Format Tue 12, November
  static String formatShiftSelectedDate(DateTime inputDateTime) {
    try {
      final DateFormat formatter = DateFormat('EEE d, MMMM');
      return formatter.format(inputDateTime);
    } on Exception catch (e) {
      throw FormatException("Invalid DateTime format: $inputDateTime");
    }
  }

  /// Format 12/07/2024, 03:40 PM Shift Logs
  static String formatShiftLogsDate(String isoDate) {
    try {
      DateTime parsedDate = DateTime.parse(isoDate);
      String formattedDate = DateFormat('MM/dd/yyyy, hh:mm a').format(parsedDate.toLocal());
      return formattedDate;
    } on Exception catch (e) {
      throw FormatException("Invalid DateTime format: $isoDate");
    }
  }
}

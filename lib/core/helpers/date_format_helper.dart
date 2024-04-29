import 'package:intl/intl.dart';

class DateTimeHelper {
  // Parse the string into a DateTime object
  static List<String?> parseDateTime(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);

    DateFormat dateFormat = DateFormat.MMMd();
    DateFormat timeFormat = DateFormat('h:mm a');

    String datePart = dateFormat.format(dateTime);
    String timePart = timeFormat.format(dateTime);
    return [datePart, timePart];
  }
}

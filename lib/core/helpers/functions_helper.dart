import 'dart:convert';
import 'package:intl/intl.dart';

import '../widgets/show_message_to_user.dart';
import 'app_regex.dart';

class FunctionsHelper {
  static List<String>? base64ToString(String base64String, context) {
    String decodedString = utf8.decode(base64.decode(base64String));
    if (AppRegex.isQRCodeDataValid(decodedString) == true) {
      List<String> decodedData = decodedString.split('- ');
      return decodedData;
    } else {
      showMessageToUser(
        context,
        message: 'QR code is invalid',
      );
      return null;
    }
  }

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

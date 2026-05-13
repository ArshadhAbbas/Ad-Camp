import 'package:intl/intl.dart';

class StringHelpers {
  static String formatDate(String date) {
    DateFormat inputFormat = DateFormat("yyyy-MM-dd");
    DateTime dateTime = inputFormat.parse(date);
    return DateFormat('dd MMM yyyy').format(dateTime);
  }
}

extension StringExtensions on String {
 String toTitleCase() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }
}
import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String get formattedDate {
    return DateFormat('dd MMM yyyy').format(this);
  }
}

import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;


extension DateTimeExtensions on DateTime {
  String get formattedDate {
    return DateFormat('dd MMM yyyy').format(this);
  }
  String get formattedTimeAgo{
    return timeago.format(this, locale: "en_short");
  }
}

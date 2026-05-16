import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    const settings = InitializationSettings(android: android);
    await _notifications.initialize(settings: settings);
    await requestPermission();
  }

  static Future<bool> requestPermission() async {
    final androidImplementation = _notifications
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    bool? notificationEnabled = await androidImplementation?.requestNotificationsPermission();
    return notificationEnabled ?? false;
  }

  static Future<void> showNotification({required String title, required String body}) async {
    const androidDetails = AndroidNotificationDetails(
      'anomaly_channel',
      'Anomaly Alerts',
      channelDescription: 'Campaign anomaly alerts',
      importance: Importance.max,
      priority: Priority.high,
    );

    const details = NotificationDetails(android: androidDetails);
    await _notifications.show(
      id: int.parse(DateTime.now().millisecondsSinceEpoch.toString().substring(8)),
      title: title,
      body: body,
      notificationDetails: details,
    );
  }

  static Future<bool> isPermissionGranted() async {
    final androidImplementation = _notifications
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    return await androidImplementation?.areNotificationsEnabled() ?? false;
  }
}

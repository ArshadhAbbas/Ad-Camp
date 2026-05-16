import 'package:ad_camp/core/services/notification_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_controller.g.dart';

@Riverpod(keepAlive: true)
class NotificationController extends _$NotificationController {
  @override
  Future<bool> build() async {
    return NotificationService.isPermissionGranted();
  }

  Future<void> changeNotification(bool value) async {
    if (value) {
      final granted = await NotificationService.requestPermission();
      state = AsyncValue.data(granted);
      return;
    }
    state = const AsyncValue.data(false);
  }
}

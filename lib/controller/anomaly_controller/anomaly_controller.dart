import 'dart:async';

import 'package:ad_camp/controller/notification_controller/notification_controller.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/enums/anomaly_enums.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/services/notification_service.dart';
import 'package:ad_camp/data_source/anomaly_data_source.dart';
import 'package:ad_camp/models/anomaly_model/anomaly_model.dart';
import 'package:ad_camp/repository/anomaly_repository/anomaly_repository.dart';
import 'package:ad_camp/repository/anomaly_repository/anomaly_repository_impl.dart';
import 'package:ad_camp/utils/anomaly_helper.dart';
import 'package:ad_camp/utils/date_time_extensions.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'anomaly_controller.g.dart';

@riverpod
AnomalyDataSource anomalyDataSource(Ref ref) {
  return AnomalyDataSource();
}

@riverpod
AnomalyRepository anomalyRepository(Ref ref) {
  return AnomalyRepositoryImpl(datasource: ref.watch(anomalyDataSourceProvider));
}

class AnomalyControllerModel {
  final AnomalyEnums? anomalyType;
  final Color anomalyColor;
  final String? anomalyDetectedTime, message, anomalyThumbNail, campaignName;
  final num? spend, expected, change;

  AnomalyControllerModel({
    required this.anomalyType,
    required this.campaignName,
    required this.anomalyColor,
    required this.anomalyThumbNail,
    required this.anomalyDetectedTime,
    required this.message,
    required this.spend,
    required this.expected,
    required this.change,
  });
}

@Riverpod(keepAlive: true)
class AnomalyController extends _$AnomalyController {
  Timer? _timer;

  @override
  Future<List<AnomalyControllerModel>> build() async {
    ref.onDispose(() {
      _timer?.cancel();
    });

    _startPolling();

    return _fetchAnomalies();
  }

  Future<List<AnomalyControllerModel>> _fetchAnomalies() async {
    final repository = ref.watch(anomalyRepositoryProvider);

    List<AnomalyModel> fetchAnomalies = await repository.fetchAnomalies();
    return fetchAnomalies.map((e) {
      var anomalyType = e.type != null ? AnomalyHelper.getAnomalyTypeEnum(e.type!) : null;
      return AnomalyControllerModel(
        anomalyType: anomalyType,
        campaignName: e.campaignName ?? "",
        anomalyColor: anomalyType != null
            ? AnomalyHelper.getAnomalyColor(anomalyType)
            : ColorConstants.topaz,
        anomalyThumbNail: anomalyType != null
            ? AnomalyHelper.getAnomalyThumbNail(anomalyType)
            : ImageConstants.campaign,
        anomalyDetectedTime: e.detectedAt?.formattedTimeAgo,
        message: e.message,
        spend: e.actualValue,
        expected: e.expectedValue,
        change: e.deviationPercent,
      );
    }).toList();
  }

  void _startPolling() {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 30), (_) {
      refresh();
    });
  }

  Future<void> refresh() async {
    try {
      final anomalies = await _fetchAnomalies();
      final notificationsEnabled = ref.read(notificationControllerProvider).value ?? false;
      if (notificationsEnabled) {
        for (final anomaly in anomalies) {
          await NotificationService.showNotification(
            title: anomaly.campaignName ?? "Sample Title",
            body: AnomalyHelper.getAnomalyTypeText(anomaly.anomalyType!),
          );
        }
      }
      state = AsyncValue.data(anomalies);
    } catch (e, s) {
      state = AsyncValue.error(e, s);
    }
  }
}

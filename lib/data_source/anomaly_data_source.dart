import 'dart:convert';

import 'package:ad_camp/core/services/dio_service.dart';
import 'package:ad_camp/env.dart';
import 'package:ad_camp/models/live_mterics_model/live_metrics_model.dart';

class AnomalyDataSource {
  final dioService = DioService();

  Future fetchLiveMetrics() async {
    try {
      final response = await dioService.get(Env.liveMetricsEndpoint);
      return jsonDecode(response.data);
    } catch (e) {
      throw Exception('Failed to load Metrics: $e');
    }
  }

  Future detectAnomalies(LiveMetricsModel metrics) async {
    try {
      final response = await dioService.post(Env.anomalyEndPoint, data: metrics.toJson());
      return jsonDecode(response.data);
    } catch (e) {
      throw Exception("Failed to detect anomalies");
    }
  }
}

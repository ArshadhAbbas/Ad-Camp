import 'package:ad_camp/data_source/anomaly_data_source.dart';
import 'package:ad_camp/models/anomaly_model/anomaly_model.dart';
import 'package:ad_camp/models/live_mterics_model/live_metrics_model.dart';
import 'package:ad_camp/repository/anomaly_repository/anomaly_repository.dart';

class AnomalyRepositoryImpl implements AnomalyRepository {
  AnomalyRepositoryImpl({required this.datasource});
  final AnomalyDataSource datasource;
  @override
  Future<List<AnomalyModel>> fetchAnomalies() async {
    var fetchLiveMetrics = LiveMetricsModel.fromJson((await datasource.fetchLiveMetrics()));
    var detectAnomalies = await datasource.detectAnomalies(fetchLiveMetrics);
    return (detectAnomalies["anomalies"] as List).map((e) => AnomalyModel.fromJson(e)).toList();
  }
}

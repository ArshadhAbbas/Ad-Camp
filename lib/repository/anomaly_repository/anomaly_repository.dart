import 'package:ad_camp/models/anomaly_model/anomaly_model.dart';

abstract class AnomalyRepository {
  Future<List<AnomalyModel>> fetchAnomalies();
}

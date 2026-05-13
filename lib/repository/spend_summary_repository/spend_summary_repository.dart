import 'package:ad_camp/core/constants/enums/spend_summary_enums.dart';
import 'package:ad_camp/models/spend_summary_model/spend_summary_model.dart';

abstract class SpendSummaryRepository {
  Future<SpendSummaryModel> fetchSpendSummary(SpendSummaryRangeEnum range);
}

import 'package:ad_camp/core/constants/enums/spend_summary_enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spend_summary_date_range_controller.g.dart';

@riverpod
class SpendSummaryDateRangeController extends _$SpendSummaryDateRangeController {
  @override
  SpendSummaryRangeEnum build() {
    return SpendSummaryRangeEnum.last7Days;
  }

  void changeDateRange(SpendSummaryRangeEnum dateRange) {
    state = dateRange;
  }
}

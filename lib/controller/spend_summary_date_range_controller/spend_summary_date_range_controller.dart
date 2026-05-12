import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spend_summary_date_range_controller.g.dart';

enum SpendSummaryDateRangeEnum { last7Days, last14Days, last30Days }

@riverpod
class SpendSummaryDateRangeController extends _$SpendSummaryDateRangeController {
  @override
  SpendSummaryDateRangeEnum build() {
    return SpendSummaryDateRangeEnum.last7Days;
  }

  void changeDateRange(SpendSummaryDateRangeEnum dateRange) {
    state = dateRange;
  }
}

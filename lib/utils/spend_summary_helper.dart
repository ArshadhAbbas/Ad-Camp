import 'package:ad_camp/core/constants/enums/spend_summary_enums.dart';

class SpendSummaryHelper {
  static Map<String, SpendSummaryRangeEnum> spendSummaryRange = {
    "last_7_days": SpendSummaryRangeEnum.last7Days,
    "last_14_days": SpendSummaryRangeEnum.last14Days,
    "last_30_days": SpendSummaryRangeEnum.last30Days,
  };

  static String getSpendSummaryRangeText(SpendSummaryRangeEnum spendSummaryRange) {
    switch (spendSummaryRange) {
      case SpendSummaryRangeEnum.last7Days:
        return "Last 7 Days";
      case SpendSummaryRangeEnum.last14Days:
        return "Last 14 Days";
      case SpendSummaryRangeEnum.last30Days:
        return "Last 30 Days";
    }
  }

  static SpendSummaryRangeEnum getSpendSummaryRangeEnum(String status) {
    switch (status) {
      case "Last 7 Days":
        return SpendSummaryRangeEnum.last7Days;
      case "Last 14 Days":
        return SpendSummaryRangeEnum.last14Days;
      case "Last 30 Days":
        return SpendSummaryRangeEnum.last30Days;
      default:
        throw Exception("Invalid status string: $status");
    }
  }
}

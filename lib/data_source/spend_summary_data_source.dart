import 'dart:convert';
import 'dart:developer';

import 'package:ad_camp/core/constants/enums/spend_summary_enums.dart';
import 'package:ad_camp/core/services/dio_service.dart';
import 'package:ad_camp/env.dart';
import 'package:ad_camp/utils/spend_summary_helper.dart';

class SpendSummaryDataSource {
  final dioService = DioService();

  Future fetchSpendSummary(SpendSummaryRangeEnum range) async {
    try {
      final response = await dioService.get(
        "${Env.spendSummaryEndpoint}?range=${SpendSummaryHelper.spendSummaryRange.entries.firstWhere((entry) => entry.value == range).key}",
      );
      return jsonDecode(response.data);
    } catch (e) {
      log('Error fetching spend summary');
      throw Exception('Failed to load spend summary: $e');
    }
  }
}

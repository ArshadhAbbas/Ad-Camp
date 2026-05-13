import 'dart:convert';
import 'dart:developer';

import 'package:ad_camp/core/services/dio_service.dart';
import 'package:ad_camp/env.dart';

class CampaignDataSource {
  final dioService = DioService();

  Future fetchCampaigns() async {
    try {
      final response = await dioService.get(Env.campaignsEndpoint);
      return jsonDecode(response.data);
    } catch (e) {
      log('Error fetching campaigns: $e');
      throw Exception('Failed to load campaigns: $e');
    }
  }
}

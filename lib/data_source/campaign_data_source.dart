import 'dart:convert';
import 'dart:developer';

import 'package:ad_camp/core/services/dio_service.dart';
import 'package:ad_camp/env.dart';
import 'package:ad_camp/models/campaign_history_model/campaign_history_model.dart';

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

  Future fetchCampaignDetails({required String campId}) async {
    try {
      final response = await dioService.get("${Env.campaignsEndpoint}/$campId");
      return jsonDecode(response.data);
    } catch (e) {
      log('Error fetching campaign details: $e');
      throw Exception('Failed to load campaign details: $e');
    }
  }

  Future fetchCampaignHistory({required String campaignId}) async {
    try {
      final response = await dioService.get(
        "${Env.campaignsEndpoint}$campaignId${Env.historyEndPoint}",
      );
      return jsonDecode(response.data);
    } catch (e) {
      log('Error fetching campaign history: $e');
      throw Exception('Failed to load campaign history: $e');
    }
  }

  Future fetchForecast({required CampaignHistoryModel history}) async {
    try {
      final response = await dioService.post(
        Env.forecastEndpoint,
        data: {...history.toJson(), "horizon_days": 7},
      );
      return jsonDecode(response.data);
    } catch (e) {
      log('Error fetching forecast data: $e');
      throw Exception('Failed to load forecast data: $e');
    }
  }
}

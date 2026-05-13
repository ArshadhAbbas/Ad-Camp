// import 'dart:convert';

// import 'package:ad_camp/models/historical_ctr_model/historical_ctr_model.dart';
// import 'package:flutter/services.dart';

// class CampaignDetailsService {
//   Future<HistoricalCtrModel> loadJson() async {
//   final String response = await rootBundle.loadString(
//     'assets/json/camp_001_ctr.json',
//   );

//   final data = jsonDecode(response);

//   var historicalCtrModel = HistoricalCtrModel.fromJson(data);
//   return historicalCtrModel;
// }
// }
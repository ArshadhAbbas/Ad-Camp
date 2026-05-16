import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/enums/anomaly_enums.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:flutter/material.dart';

class AnomalyHelper {
  static String getAnomalyTypeText(AnomalyEnums anomalyType) {
    switch (anomalyType) {
      case AnomalyEnums.spendSpike:
        return "Spend Spike";
      case AnomalyEnums.ctrDrop:
        return "CTR Drop";
    }
  }

  static AnomalyEnums getAnomalyTypeEnum(String anomaly) {
    switch (anomaly) {
      case "ctr_drop":
        return AnomalyEnums.ctrDrop;
      case "spend_spike":
        return AnomalyEnums.spendSpike;
      default:
        throw Exception("Invalid anomaly string: $anomaly");
    }
  }

  static String getAnomalyThumbNail(AnomalyEnums anomalyType) {
    switch (anomalyType) {
      case AnomalyEnums.spendSpike:
        return ImageConstants.tradeUp;
      case AnomalyEnums.ctrDrop:
        return ImageConstants.tradeDown;
    }
  }

  static Color getAnomalyColor(AnomalyEnums anomalyType) {
    switch (anomalyType) {
      case AnomalyEnums.spendSpike:
        return ColorConstants.fuzzyWuzzyBrown;
      case AnomalyEnums.ctrDrop:
        return ColorConstants.schoolBusYellow;
    }
  }
}

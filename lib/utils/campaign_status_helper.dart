import 'package:ad_camp/core/constants/enums/campaign_status_enum.dart';

class CampaignStatusHelper {
  static String getStatusText(CampaignStatusEnum status) {
    switch (status) {
      case CampaignStatusEnum.active:
        return "Active";
      case CampaignStatusEnum.paused:
        return "Paused";
      case CampaignStatusEnum.ended:
        return "Ended";
    }
  }

  static CampaignStatusEnum getStatusEnum(String status) {
    switch (status) {
      case "Active":
        return CampaignStatusEnum.active;
      case "Paused":
        return CampaignStatusEnum.paused;
      case "Ended":
        return CampaignStatusEnum.ended;
      default:
        throw Exception("Invalid status string: $status");
    }
  }
}

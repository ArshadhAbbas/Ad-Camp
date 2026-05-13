import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/screens/alerts/widgets/alert_anomaly_card.dart';
import 'package:ad_camp/view/screens/alerts/widgets/alerts_header_card.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:ad_camp/view/widgets/app_switch.dart';
import 'package:ad_camp/view/widgets/topaz_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          AlertsHeaderCard(),
          SizedBox(height: 13),
          Text("Recent Anomalies", style: TextStyleConstants.f14w600),
          SizedBox(height: 6),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => AlertAnomalyCard(),
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: 3,
            ),
          ),
          SizedBox(height: 16),
          AppCard(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopazCard(child: SvgPicture.asset(ImageConstants.tvIcon, height: 30)),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .start,
                    children: [
                      Text("Enable Push Notifications ", style: TextStyleConstants.f12w600),
                      SizedBox(height: 4),
                      Text(
                        "Get notified instantly when a new anomaly is detected.",
                        style: TextStyleConstants.f10w400.copyWith(color: ColorConstants.cloud),
                      ),
                    ],
                  ),
                ),
                // Switch(value: true, onChanged: (val) {}, padding: EdgeInsets.zero),
                AppSwitch(onChanged: (val) {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

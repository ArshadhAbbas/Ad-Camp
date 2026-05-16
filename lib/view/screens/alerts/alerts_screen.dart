import 'package:ad_camp/controller/anomaly_controller/anomaly_controller.dart';
import 'package:ad_camp/controller/notification_controller/notification_controller.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/image_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/screens/alerts/widgets/alert_anomaly_card.dart';
import 'package:ad_camp/view/screens/alerts/widgets/alerts_header_card.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:ad_camp/view/widgets/app_loader.dart';
import 'package:ad_camp/view/widgets/app_switch.dart';
import 'package:ad_camp/view/widgets/topaz_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
            child: Consumer(
              builder: (context, ref, child) {
                final anomalies = ref.watch(anomalyControllerProvider);
                return anomalies.when(
                  data: (data) => data.isNotEmpty
                      ? ListView.separated(
                          itemBuilder: (context, index) =>
                              AlertAnomalyCard(anomalyModel: data[index]),
                          separatorBuilder: (context, index) => SizedBox(height: 10),
                          itemCount: data.length,
                        )
                      : SizedBox(),
                  error: (error, stackTrace) => Text(error.toString()),
                  loading: () => Center(child: AppLoader(size: 30)),
                );
              },
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
                Consumer(
                  builder: (context, ref, child) {
                    final notificationStatus = ref.watch(notificationControllerProvider);
                    return notificationStatus.when(
                      data: (data) => AppSwitch(
                        onChanged: (val) {
                          ref.read(notificationControllerProvider.notifier).changeNotification(val);
                        },
                        value: data,
                      ),
                      error: (error, stackTrace) => SizedBox.shrink(),
                      loading: () {
                        return Center(child: AppLoader(size: 20));
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

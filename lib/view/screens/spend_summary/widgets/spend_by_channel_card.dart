import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SpendByChannelCard extends StatelessWidget {
  const SpendByChannelCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 25, Colors.blue),
      ChartData('Steve', 38, Colors.green),
      ChartData('Others', 52, Colors.yellow),
    ];
    return AppCard(
      margin: EdgeInsetsGeometry.symmetric(horizontal: 20),
      child: Column(
        spacing: 12,
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          Text("Spend by Channel", style: TextStyleConstants.f14w600),
          SizedBox(
            height: 120,
            child: Row(
              spacing: 10,
              children: [
                Expanded(
                  child: SfCircularChart(
                    legend: Legend(isVisible: false),
                    series: <CircularSeries>[
                      DoughnutSeries<ChartData, String>(
                        radius: '130%',
                        innerRadius: "60%",
                        dataSource: chartData,
                        pointColorMapper: (ChartData data, _) => data.color,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: chartData
                        .map(
                          (data) => Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 16,
                                      height: 16,
                                      decoration: BoxDecoration(
                                        color: data.color,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(data.x, style: TextStyleConstants.f12w400),
                                    Spacer(),
                                    Text("${data.y}%", style: TextStyleConstants.f12w400),
                                  ],
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}

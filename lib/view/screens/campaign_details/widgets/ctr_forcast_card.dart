/// ctr_forecast_card.dart
library;

import 'package:ad_camp/controller/campaign_details_controller/campaign_details_controller.dart';
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:ad_camp/core/constants/text_style_constants.dart';
import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:ad_camp/view/widgets/dashed_line_painter.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CtrForecastCard extends StatelessWidget {
  const CtrForecastCard({super.key, required this.data});

  final CampaignDetailsControllerModel data;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text("CTR Performance & Forecast", style: TextStyleConstants.f16w600),
              ),
            ],
          ),
          const SizedBox(height: 20),

          /// LEGEND
          Row(
            children: const [
              _ChartLegend(isDashed: false, title: "Historical CTR"),
              SizedBox(width: 24),
              _ChartLegend(isDashed: true, title: "Forecast CTR"),
            ],
          ),

          const SizedBox(height: 20),

          Text(
            "CTR (%)",
            style: TextStyleConstants.f12w400.copyWith(color: ColorConstants.starDust),
          ),
          const SizedBox(height: 16),
          Padding(padding: const EdgeInsets.only(left: 40), child: _buildAlignedHeaderLines()),
          SizedBox(
            height: 300,
            child: SfCartesianChart(
              plotAreaBorderWidth: 0,
              margin: EdgeInsets.zero,
              trackballBehavior: TrackballBehavior(
                enable: true,
                activationMode: ActivationMode.singleTap,
                tooltipSettings: const InteractiveTooltip(enable: true, color: Color(0xFF1E1E1E)),
                lineType: TrackballLineType.vertical,
                lineColor: Colors.white24,
              ),
              primaryXAxis: NumericAxis(
                minimum: 0,
                maximum: 100,
                interval: 10,
                majorGridLines: const MajorGridLines(width: 0),
                axisLine: const AxisLine(color: Colors.white10),
                labelStyle: const TextStyle(color: Colors.white60),
                axisLabelFormatter: (details) {
                  return ChartAxisLabel(
                    data.labels[details.value.round()] ?? "",
                    details.textStyle,
                  );
                },
              ),
              primaryYAxis: NumericAxis(
                minimum: 0,
                maximum: 10,
                interval: 2,
                labelFormat: '{value}%',
                majorGridLines: const MajorGridLines(width: 0),
                axisLine: const AxisLine(width: 0),
                labelStyle: const TextStyle(color: Colors.white60),
              ),
              annotations: <CartesianChartAnnotation>[
                CartesianChartAnnotation(
                  coordinateUnit: CoordinateUnit.point,
                  x: 50,
                  y: 5,
                  widget: CustomPaint(size: const Size(1, 200), painter: DashedLinePainter()),
                ),
              ],
              series: <CartesianSeries>[
                /// HISTORICAL
                SplineAreaSeries<ForecastChartPoint, num>(
                  name: 'Historical',
                  dataSource: data.historicalChart,
                  xValueMapper: (value, _) => value.x,
                  yValueMapper: (value, _) => value.y,
                  color: ColorConstants.topaz.withValues(alpha: 0.1),
                  borderColor: ColorConstants.topaz,
                  borderWidth: 2,
                  enableTooltip: true,
                ),

                /// RANGE AREA
                SplineRangeAreaSeries<ForecastRangePoint, num>(
                  dataSource: data.forecastRange,
                  xValueMapper: (value, _) => value.x,
                  highValueMapper: (value, _) => value.high,
                  lowValueMapper: (value, _) => value.low,
                  color: ColorConstants.topaz.withValues(alpha: 0.12),
                  enableTooltip: false,
                ),

                /// FORECAST
                SplineSeries<ForecastChartPoint, num>(
                  name: 'Forecast',
                  dataSource: data.forecastChart,
                  xValueMapper: (value, _) => value.x,
                  yValueMapper: (value, _) => value.y,
                  color: ColorConstants.topaz,
                  dashArray: const [6, 4],
                  width: 2,
                  enableTooltip: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAlignedHeaderLines() {
    const Color lineColor = Colors.white24;
    const TextStyle labelStyle = TextStyle(color: Colors.white38, fontSize: 11);
    return Row(
      children: [
        const Icon(Icons.arrow_left, size: 14, color: lineColor),
        Expanded(child: Container(height: 1, color: lineColor)),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text("Historical (30 Days)", style: labelStyle),
        ),
        Expanded(child: Container(height: 1, color: lineColor)),
        const Text("✕", style: TextStyle(color: lineColor, fontSize: 10)),
        Expanded(child: Container(height: 1, color: lineColor)),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text("Forecast (7 Days)", style: labelStyle),
        ),
        Expanded(child: Container(height: 1, color: lineColor)),
      ],
    );
  }
}

class _ChartLegend extends StatelessWidget {
  final String title;
  final bool isDashed;
  const _ChartLegend({required this.title, required this.isDashed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isDashed)
          Row(
            children: List.generate(
              3,
              (i) => Container(
                width: 5,
                height: 2,
                color: ColorConstants.topaz,
                margin: const EdgeInsets.only(right: 2),
              ),
            ),
          )
        else
          Container(width: 20, height: 2, color: ColorConstants.topaz),
        const SizedBox(width: 8),
        Text(title, style: const TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }
}

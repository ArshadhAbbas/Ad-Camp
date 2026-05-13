import 'package:ad_camp/view/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CtrForecastCard extends StatefulWidget {
  const CtrForecastCard({super.key});

  @override
  State<CtrForecastCard> createState() => _CtrForecastCardState();
}

class _CtrForecastCardState extends State<CtrForecastCard> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> historicalData = [
      ChartData(0, 2.7),
      ChartData(1, 2.4),
      ChartData(2, 3.2),
      ChartData(3, 2.7),
      ChartData(4, 3.6),
      ChartData(5, 2.9),
      ChartData(6, 4.1),
      ChartData(7, 3.4),
      ChartData(8, 2.7),
      ChartData(9, 3.1),
      ChartData(10, 3.5),
      ChartData(11, 3.3),
      ChartData(12, 3.0),
      ChartData(13, 3.9),
      ChartData(14, 3.2),
      ChartData(15, 3.5),
      ChartData(16, 4.1),
    ];

    final List<RangeData> forecastRange = [
      RangeData(16, 4.1, 4.1),
      RangeData(17, 4.2, 3.4),
      RangeData(18, 4.1, 3.5),
      RangeData(19, 4.4, 3.6),
      RangeData(20, 4.6, 3.8),
      RangeData(21, 4.4, 3.6),
      RangeData(22, 3.8, 2.9),
      RangeData(23, 3.9, 3.1),
      RangeData(24, 3.8, 3.2),
      RangeData(25, 3.5, 2.8),
      RangeData(26, 3.8, 3.2),
      RangeData(27, 3.5, 3.0),
      RangeData(28, 4.0, 2.6),
    ];

    final List<ChartData> forecastLine = forecastRange
        .map((e) => ChartData(e.x, (e.high + e.low) / 2))
        .toList();

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  "CTR Performance & Forecast",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          /// LEGEND SECTION
          Row(
            children: const [
              _ChartLegend(isDashed: false, title: "Historical CTR"),
              SizedBox(width: 24),
              _ChartLegend(isDashed: true, title: "Forecast CTR"),
            ],
          ),

          const SizedBox(height: 20),
          const Text("CTR (%)", style: TextStyle(color: Colors.white60, fontSize: 14)),
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
                maximum: 28,
                interval: 2,
                majorGridLines: const MajorGridLines(width: 0),
                axisLine: const AxisLine(color: Colors.white10),
                labelStyle: const TextStyle(color: Colors.white60),
                axisLabelFormatter: (details) {
                  final labels = {
                    0: "02 Jun",
                    6: "09 Jun",
                    12: "23 Jun",
                    18: "29 Jun",
                    22: "03 July",
                    26: "10 July",
                  };
                  return ChartAxisLabel(labels[details.value.toInt()] ?? "", details.textStyle);
                },
              ),
              primaryYAxis: NumericAxis(
                minimum: 0,
                maximum: 6,
                interval: 2,
                labelFormat: '{value}%',
                majorGridLines: const MajorGridLines(width: 0),
                axisLine: const AxisLine(width: 0),
                labelStyle: const TextStyle(color: Colors.white60),
              ),
              annotations: <CartesianChartAnnotation>[
                // Vertical Dashed Divider
                CartesianChartAnnotation(
                  coordinateUnit: CoordinateUnit.point,
                  x: 16,
                  y: 3,
                  widget: CustomPaint(size: const Size(1, 200), painter: DashedLinePainter()),
                ),
              ],
              series: <CartesianSeries>[
                // Historical Area
                SplineAreaSeries<ChartData, num>(
                  name: 'Historical',
                  dataSource: historicalData,
                  xValueMapper: (data, _) => data.x,
                  yValueMapper: (data, _) => data.y,
                  color: const Color(0xFF10D5F5).withOpacity(0.1),
                  borderColor: const Color(0xFF10D5F5),
                  borderWidth: 2,
                  enableTooltip: true,
                ),
                // Forecast Confidence Cloud
                SplineRangeAreaSeries<RangeData, num>(
                  dataSource: forecastRange,
                  xValueMapper: (data, _) => data.x,
                  highValueMapper: (data, _) => data.high,
                  lowValueMapper: (data, _) => data.low,
                  color: const Color(0xFF10D5F5).withOpacity(0.12),
                  enableTooltip: false, // Hide tooltip for the cloud itself
                ),
                // Forecast Dashed Line
                SplineSeries<ChartData, num>(
                  name: 'Forecast',
                  dataSource: forecastLine,
                  xValueMapper: (data, _) => data.x,
                  yValueMapper: (data, _) => data.y,
                  color: const Color(0xFF10D5F5),
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
                color: const Color(0xFF10D5F5),
                margin: const EdgeInsets.only(right: 2),
              ),
            ),
          )
        else
          Container(width: 20, height: 2, color: const Color(0xFF10D5F5)),
        const SizedBox(width: 8),
        Text(title, style: const TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white30
      ..strokeWidth = 1;
    double dashHeight = 5, dashSpace = 3, startY = 0;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class ChartData {
  final double x;
  final double y;
  ChartData(this.x, this.y);
}

class RangeData {
  final double x;
  final double high;
  final double low;
  RangeData(this.x, this.high, this.low);
}

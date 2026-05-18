import 'dart:ui';

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}


class RangeData {
  final double x;

  final double high;

  final double low;

  RangeData(this.x, this.high, this.low);
}

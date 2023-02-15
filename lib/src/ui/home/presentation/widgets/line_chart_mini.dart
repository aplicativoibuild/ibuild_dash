
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


class LineChartMiniWidget extends StatelessWidget {
  final Color color;

 const LineChartMiniWidget({
    Key? key,
    required this.color,
  }) : super(key: key);




  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
      ];

    LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: Colors.blue,
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );   

        LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
      ); 
      
      FlGridData get gridData => FlGridData(show: false);

        FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );
        SideTitles get bottomTitles => SideTitles(
        showTitles: false,
        reservedSize: 0,
        interval: 1,
      );


    SideTitles leftTitles() => SideTitles(
        showTitles: false,
        interval: 1,
        reservedSize: 0,
      );

    FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide.none,
          left: BorderSide.none,
          right: BorderSide.none,
          top: BorderSide.none,
        ),
      );



  @override
  Widget build(BuildContext context) {
    return   Expanded(
              child:  
               LineChart(
                LineChartData(
                  lineBarsData: lineBarsData1,
                  lineTouchData: lineTouchData1,
                  gridData: gridData,
                  titlesData: titlesData1,
                  borderData: borderData,
                  minX: 0,
                  maxX: 14,
                  maxY: 4,
                  minY: 0,
                  
                ),
              ),);
  }
}





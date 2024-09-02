import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class OverallPerformance extends StatelessWidget {
  const OverallPerformance({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Over All Performance",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Colors.black
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(0, 20),
                        const FlSpot(1, 10),
                        const FlSpot(2, 30),
                        const FlSpot(3, 20),
                        const FlSpot(4, 40),
                        const FlSpot(5, 25),
                        // FlSpot(6, 35),
                      ],
                      isCurved: true,
                      color: Colors.redAccent,
                      barWidth: 2,
                      isStrokeCapRound: true,
                      belowBarData: BarAreaData(
                        show: true,
                        color: Colors.redAccent.withOpacity(0.3)
                      ),
                    ),
                    LineChartBarData(
                      spots: [
                        const FlSpot(0, 15),
                        const FlSpot(1, 25),
                        const FlSpot(2, 20),
                        const FlSpot(3, 30),
                        const FlSpot(4, 20),
                        const FlSpot(5, 35),
                        // FlSpot(6, 30),
                      ],
                      isCurved: true,
                      color: Colors.blueAccent,
                      barWidth: 2,
                      isStrokeCapRound: true,
                      belowBarData: BarAreaData(
                        show: true,
                        color: Colors.blueAccent.withOpacity(0.3)
                      ),
                    ),
                  ],
                  titlesData: FlTitlesData(
                    // leftTitles: AxisTitles(
                    //   sideTitles: SideTitles(showTitles: true),
                    // ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return const Text('2015');
                            case 1:
                              return const Text('2016');
                            case 2:
                              return const Text('2017');
                            case 3:
                              return const Text('2018');
                            case 4:
                              return const Text('2019');
                            case 5:
                              return const Text('2020');
                            default:
                              return const Text('');
                          }
                        },
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  gridData: const FlGridData(show: false),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: Colors.grey.shade300, width: 1),
                  ),
                  lineTouchData: LineTouchData(
                    touchTooltipData: LineTouchTooltipData(
                      // tooltipBgColor: Colors.purpleAccent,
                      tooltipRoundedRadius: 5,
                      getTooltipItems: (touchedSpots) {
                        return touchedSpots.map((touchedSpot) {
                          return LineTooltipItem(
                            '${touchedSpot.y.toInt()}',
                            const TextStyle(color: Colors.white),
                          );
                        }).toList();
                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                LegendItem(
                  color: Colors.redAccent,
                  text: 'Pending Done',
                ),
                SizedBox(width: 16),
                LegendItem(
                  color: Colors.blueAccent,
                  text: 'Project Done',
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String text;

  const LegendItem({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            color: Colors.grey[700],
            fontWeight: FontWeight.bold,
            fontSize: 10
          ),
        ),
      ],
    );
  }
}

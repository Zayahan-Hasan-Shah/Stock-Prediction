import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DecisionTreeAndActualDataWidget extends StatelessWidget {
  final List<double> actual;
  // final List<double> predictions;
  final List<double> decisionTreePredictions;
  // final List<double> lstmPredictions;

  DecisionTreeAndActualDataWidget({
    required this.actual,
    // required this.predictions,
    required this.decisionTreePredictions,
    // required this.lstmPredictions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Line chart
        Expanded(
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: true),  // Show grid for clarity
              titlesData: FlTitlesData(show: true), // Display axis titles
              lineBarsData: [
                // Actual data (blue line)
                LineChartBarData(
                  spots: actual
                      .asMap()
                      .entries
                      .map((e) => FlSpot(e.key.toDouble(), e.value))
                      .toList(),
                  isCurved: true,
                  color: Colors.blue.withOpacity(0.5),
                  barWidth: 3,
                  belowBarData: BarAreaData(show: true, color: Colors.blue.withOpacity(0.2)),
                ),
                // Linear Regression (green line)
                // LineChartBarData(
                //   spots: predictions
                //       .asMap()
                //       .entries
                //       .map((e) => FlSpot(e.key.toDouble(), e.value))
                //       .toList(),
                //   isCurved: true,
                //   color: Colors.green.withOpacity(0.5),
                //   barWidth: 3,
                //   belowBarData: BarAreaData(show: true, color: Colors.green.withOpacity(0.2)),
                // ),
                // Decision Tree (orange line)
                LineChartBarData(
                  spots: decisionTreePredictions
                      .asMap()
                      .entries
                      .map((e) => FlSpot(e.key.toDouble(), e.value))
                      .toList(),
                  isCurved: true,
                  color: Colors.orange.withOpacity(0.5),
                  barWidth: 3,
                  belowBarData: BarAreaData(show: true, color: Colors.orange.withOpacity(0.2)),
                ),
                // LSTM (red line)
                // LineChartBarData(
                //   spots: lstmPredictions
                //       .asMap()
                //       .entries
                //       .map((e) => FlSpot(e.key.toDouble(), e.value))
                //       .toList(),
                //   isCurved: true,
                //   color: Colors.red.withOpacity(0.5),
                //   barWidth: 3,
                //   belowBarData: BarAreaData(show: true, color: Colors.red.withOpacity(0.2)),
                // ),
              ],
            ),
          ),
        ),
        // Legend (below the chart)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LegendItem(color: Colors.blue, label: "Actual"),
              const SizedBox(height: 4,),
              LegendItem(color: Colors.orange, label: "Decision Tree"),
              const SizedBox(height: 4,),
            ],
          ),
        ),
      ],
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  const LegendItem({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            color: color,
          ),
          SizedBox(width: 5),
          Text(label),
        ],
      ),
    );
  }
}

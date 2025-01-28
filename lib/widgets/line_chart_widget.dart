// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class LineChartWidget extends StatelessWidget {
//   final List<double> actual;
//   final List<double> predictions;

//   LineChartWidget(this.actual, this.predictions);

//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       LineChartData(
//         lineBarsData: [
//           LineChartBarData(
//             spots: actual
//                 .asMap()
//                 .entries
//                 .map((e) => FlSpot(e.key.toDouble(), e.value))
//                 .toList(),
//             isCurved: true,
//             color: Colors.blue.withOpacity(0.5), // Fixed: No list needed here
//             barWidth: 3,
//           ),
//           LineChartBarData(
//             spots: predictions
//                 .asMap()
//                 .entries
//                 .map((e) => FlSpot(e.key.toDouble(), e.value))
//                 .toList(),
//             isCurved: true,
//             color: Colors.green.withOpacity(0.5), // Fixed: No list needed here
//             barWidth: 3,
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class LineChartWidget extends StatelessWidget {
//   final List<double> actual;
//   final List<double> predictions;
//   final List<double> decisionTreePredictions;
//   final List<double> lstmPredictions;

//   LineChartWidget(List<double> actual, {
//     required this.actual,
//     required this.predictions,
//     required this.decisionTreePredictions,
//     required this.lstmPredictions,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Line chart
//         Expanded(
//           child: LineChart(
//             LineChartData(
//               lineBarsData: [
//                 // Actual data (blue line)
//                 LineChartBarData(
//                   spots: actual
//                       .asMap()
//                       .entries
//                       .map((e) => FlSpot(e.key.toDouble(), e.value))
//                       .toList(),
//                   isCurved: true,
//                   color: Colors.blue.withOpacity(0.5),
//                   barWidth: 3,
//                 ),
//                 // Linear Regression (green line)
//                 LineChartBarData(
//                   spots: predictions
//                       .asMap()
//                       .entries
//                       .map((e) => FlSpot(e.key.toDouble(), e.value))
//                       .toList(),
//                   isCurved: true,
//                   color: Colors.green.withOpacity(0.5),
//                   barWidth: 3,
//                 ),
//                 // Decision Tree (orange line)
//                 LineChartBarData(
//                   spots: decisionTreePredictions
//                       .asMap()
//                       .entries
//                       .map((e) => FlSpot(e.key.toDouble(), e.value))
//                       .toList(),
//                   isCurved: true,
//                   color: Colors.orange.withOpacity(0.5),
//                   barWidth: 3,
//                 ),
//                 // LSTM (red line)
//                 LineChartBarData(
//                   spots: lstmPredictions
//                       .asMap()
//                       .entries
//                       .map((e) => FlSpot(e.key.toDouble(), e.value))
//                       .toList(),
//                   isCurved: true,
//                   color: Colors.red.withOpacity(0.5),
//                   barWidth: 3,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         // Legend (below the chart)
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               LegendItem(color: Colors.blue, label: "Actual"),
//               LegendItem(color: Colors.green, label: "Linear Regression"),
//               LegendItem(color: Colors.orange, label: "Decision Tree"),
//               LegendItem(color: Colors.red, label: "LSTM"),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class LegendItem extends StatelessWidget {
//   final Color color;
//   final String label;

//   const LegendItem({required this.color, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Row(
//         children: [
//           Container(
//             width: 20,
//             height: 20,
//             color: color,
//           ),
//           SizedBox(width: 5),
//           Text(label),
//         ],
//       ),
//     );
//   }
// }


// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class LineChartWidget extends StatelessWidget {
//   final List<double> actual;
//   final List<double> predictions;
//   final List<double> decisionTreePredictions;
//   final List<double> lstmPredictions;

//   // Corrected constructor
//   LineChartWidget({
//     required this.actual,
//     required this.predictions,
//     required this.decisionTreePredictions,
//     required this.lstmPredictions,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Line chart
//         Expanded(
//           child: LineChart(
//             LineChartData(
//               lineBarsData: [
//                 // Actual data (blue line)
//                 LineChartBarData(
//                   spots: actual
//                       .asMap()
//                       .entries
//                       .map((e) => FlSpot(e.key.toDouble(), e.value))
//                       .toList(),
//                   isCurved: true,
//                   color: Colors.blue.withOpacity(0.5),
//                   barWidth: 3,
//                 ),
//                 // Linear Regression (green line)
//                 LineChartBarData(
//                   spots: predictions
//                       .asMap()
//                       .entries
//                       .map((e) => FlSpot(e.key.toDouble(), e.value))
//                       .toList(),
//                   isCurved: true,
//                   color: Colors.green.withOpacity(0.5),
//                   barWidth: 3,
//                 ),
//                 // Decision Tree (orange line)
//                 LineChartBarData(
//                   spots: decisionTreePredictions
//                       .asMap()
//                       .entries
//                       .map((e) => FlSpot(e.key.toDouble(), e.value))
//                       .toList(),
//                   isCurved: true,
//                   color: Colors.orange.withOpacity(0.5),
//                   barWidth: 3,
//                 ),
//                 // LSTM (red line)
//                 LineChartBarData(
//                   spots: lstmPredictions
//                       .asMap()
//                       .entries
//                       .map((e) => FlSpot(e.key.toDouble(), e.value))
//                       .toList(),
//                   isCurved: true,
//                   color: Colors.red.withOpacity(0.5),
//                   barWidth: 3,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         // Legend (below the chart)
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               LegendItem(color: Colors.blue, label: "Actual"),
//               LegendItem(color: Colors.green, label: "Linear Regression"),
//               LegendItem(color: Colors.orange, label: "Decision Tree"),
//               LegendItem(color: Colors.red, label: "LSTM"),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class LegendItem extends StatelessWidget {
//   final Color color;
//   final String label;

//   const LegendItem({required this.color, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Row(
//         children: [
//           Container(
//             width: 20,
//             height: 20,
//             color: color,
//           ),
//           SizedBox(width: 5),
//           Text(label),
//         ],
//       ),
//     );
//   }
// }

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<double> actual;
  final List<double> predictions;
  final List<double> decisionTreePredictions;
  final List<double> lstmPredictions;

  LineChartWidget({
    required this.actual,
    required this.predictions,
    required this.decisionTreePredictions,
    required this.lstmPredictions,
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
                LineChartBarData(
                  spots: predictions
                      .asMap()
                      .entries
                      .map((e) => FlSpot(e.key.toDouble(), e.value))
                      .toList(),
                  isCurved: true,
                  color: Colors.green.withOpacity(0.5),
                  barWidth: 3,
                  belowBarData: BarAreaData(show: true, color: Colors.green.withOpacity(0.2)),
                ),
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
                LineChartBarData(
                  spots: lstmPredictions
                      .asMap()
                      .entries
                      .map((e) => FlSpot(e.key.toDouble(), e.value))
                      .toList(),
                  isCurved: true,
                  color: Colors.red.withOpacity(0.5),
                  barWidth: 3,
                  belowBarData: BarAreaData(show: true, color: Colors.red.withOpacity(0.2)),
                ),
              ],
            ),
          ),
        ),
        // Legend (below the chart)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LegendItem(color: Colors.blue, label: "Actual"),
              LegendItem(color: Colors.green, label: "Linear Regression"),
              LegendItem(color: Colors.orange, label: "Decision Tree"),
              LegendItem(color: Colors.red, label: "LSTM"),
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



// Best algo

// import 'package:flutter/material.dart';

// class LineChartWidget extends StatelessWidget {
//   final List<double> actual;
//   final List<double> predictions;
//   final List<double> decisionTreePredictions;
//   final List<double> lstmPredictions;
//   final String bestAlgorithm;

//   LineChartWidget(
//     this.actual, {
//     required this.predictions,
//     required this.decisionTreePredictions,
//     required this.lstmPredictions,
//     required this.bestAlgorithm,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: LineChartPainter(
//         actual: actual,
//         predictions: predictions,
//         decisionTreePredictions: decisionTreePredictions,
//         lstmPredictions: lstmPredictions,
//         bestAlgorithm: bestAlgorithm, // Pass best algorithm here
//       ),
//     );
//   }
// }

// class LineChartPainter extends CustomPainter {
//   final List<double> actual;
//   final List<double> predictions;
//   final List<double> decisionTreePredictions;
//   final List<double> lstmPredictions;
//   final String bestAlgorithm;

//   LineChartPainter({
//     required this.actual,
//     required this.predictions,
//     required this.decisionTreePredictions,
//     required this.lstmPredictions,
//     required this.bestAlgorithm,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint linePaint = Paint()
//       ..color = Colors.blue
//       ..strokeWidth = 2
//       ..style = PaintingStyle.stroke;

//     final Paint decisionTreePaint = Paint()
//       ..color = Colors.green
//       ..strokeWidth = 2
//       ..style = PaintingStyle.stroke;

//     final Paint lstmPaint = Paint()
//       ..color = Colors.red
//       ..strokeWidth = 2
//       ..style = PaintingStyle.stroke;

//     final Paint actualPaint = Paint()
//       ..color = Colors.black
//       ..strokeWidth = 2
//       ..style = PaintingStyle.stroke;

//     // Set the graph offset
//     double offsetX = 50;
//     double offsetY = size.height - 50;
//     double scaleX = size.width / (actual.length - 1);
//     double scaleY = size.height / 200;

//     // Draw the actual data line
//     for (int i = 0; i < actual.length - 1; i++) {
//       canvas.drawLine(
//         Offset(offsetX * i, offsetY - actual[i] * scaleY),
//         Offset(offsetX * (i + 1), offsetY - actual[i + 1] * scaleY),
//         actualPaint,
//       );
//     }

//     // Draw the predictions (linear)
//     for (int i = 0; i < predictions.length - 1; i++) {
//       canvas.drawLine(
//         Offset(offsetX * i, offsetY - predictions[i] * scaleY),
//         Offset(offsetX * (i + 1), offsetY - predictions[i + 1] * scaleY),
//         linePaint,
//       );
//     }

//     // Draw the decision tree predictions
//     for (int i = 0; i < decisionTreePredictions.length - 1; i++) {
//       canvas.drawLine(
//         Offset(offsetX * i, offsetY - decisionTreePredictions[i] * scaleY),
//         Offset(offsetX * (i + 1), offsetY - decisionTreePredictions[i + 1] * scaleY),
//         decisionTreePaint,
//       );
//     }

//     // Draw the LSTM predictions
//     for (int i = 0; i < lstmPredictions.length - 1; i++) {
//       canvas.drawLine(
//         Offset(offsetX * i, offsetY - lstmPredictions[i] * scaleY),
//         Offset(offsetX * (i + 1), offsetY - lstmPredictions[i + 1] * scaleY),
//         lstmPaint,
//       );
//     }

//     // Draw the best algorithm text on the chart
//     TextSpan span = TextSpan(
//       style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//       text: 'Best Algorithm: $bestAlgorithm',
//     );
//     TextPainter tp = TextPainter(
//       text: span,
//       textAlign: TextAlign.left,
//       textDirection: TextDirection.ltr,
//     );
//     tp.layout();
//     tp.paint(canvas, Offset(20, 20));  // Position the text on the chart
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }

// import 'package:flutter/material.dart';

// class PerformanceTable extends StatelessWidget {
//   final Map<String, double> metrics;

//   PerformanceTable(this.metrics);

//   @override
//   Widget build(BuildContext context) {
//     return DataTable(
//         columns: [
//           DataColumn(label: Text('Algorithm')),
//           DataColumn(label: Text('MAE')),
//         ],
//         rows: metrics.entries.map((entry) {
//           return DataRow(cells: [
//             DataCell(Text(entry.key)),
//             DataCell(Text(entry.value.toStringAsFixed(2))),
//           ]);
//         }).toList());
//   }
// }

// import 'package:flutter/material.dart';

// class PerformanceTable extends StatelessWidget {
//   final Map<String, double> metrics;

//   PerformanceTable(this.metrics);

//   @override
//   Widget build(BuildContext context) {
//     return DataTable(
//         columns: [
//           DataColumn(label: Text('Algorithm')),
//           DataColumn(label: Text('MAE')),
//           DataColumn(label: Text('RMSE')),
//           DataColumn(label: Text('R²')),
//         ],
//         rows: metrics.entries.map((entry) {
//           return DataRow(cells: [
//             DataCell(Text(entry.key)),
//             DataCell(Text(entry.value.toStringAsFixed(2))),
//             DataCell(Text("3.5")), // Example RMSE value
//             DataCell(Text("0.85")), // Example R² value
//           ]);
//         }).toList());
//   }
// }


// import 'package:flutter/material.dart';

// class PerformanceTable extends StatelessWidget {
//   final Map<String, Map<String, double>> metrics;

//   PerformanceTable(this.metrics);

//   @override
//   Widget build(BuildContext context) {
//     return DataTable(
//       columns: [
//         DataColumn(label: Text('Algorithm')),
//         DataColumn(label: Text('MAE')),
//         DataColumn(label: Text('RMSE')),
//         DataColumn(label: Text('R²')),
//       ],
//       rows: metrics.entries.map((entry) {
//         return DataRow(cells: [
//           DataCell(Text(entry.key)),
//           DataCell(Text(entry.value['MAE']!.toStringAsFixed(2))),
//           DataCell(Text(entry.value['RMSE']!.toStringAsFixed(2))),
//           DataCell(Text(entry.value['R²']!.toStringAsFixed(2))),
//         ]);
//       }).toList(),
//     );
//   }
// }

import 'package:flutter/material.dart';

class PerformanceTable extends StatelessWidget {
  final Map<String, Map<String, double>> performanceData;

  PerformanceTable(this.performanceData);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Algorithm Performance',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              DataTable(
                columns: const [
                  DataColumn(label: Text('Algorithm')),
                  DataColumn(label: Text('MAE')),
                  DataColumn(label: Text('RMSE')),
                  DataColumn(label: Text('R²')),
                ],
                rows: performanceData.entries.map((entry) {
                  String algorithm = entry.key;
                  Map<String, double> metrics = entry.value;

                  return DataRow(cells: [
                    DataCell(Text(algorithm)),
                    DataCell(Text(metrics['MAE']!.toStringAsFixed(2))),
                    DataCell(Text(metrics['RMSE']!.toStringAsFixed(2))),
                    DataCell(Text(metrics['R²']!.toStringAsFixed(2))),
                  ]);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


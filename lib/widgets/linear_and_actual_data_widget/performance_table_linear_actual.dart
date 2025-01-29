import 'package:flutter/material.dart';

class PerformanceLinearActualTable extends StatelessWidget {
  final Map<String, Map<String, double>> performanceData;

  PerformanceLinearActualTable(this.performanceData);

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
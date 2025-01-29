// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../viewmodels/stock_viewmodel.dart';
// import '../widgets/performance_table.dart';
// import '../widgets/line_chart_widget.dart';

// class StockPredictionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final stockViewModel = Provider.of<StockViewModel>(context);

//     // if (stockViewModel.stockData == null) {
//     //   return Center(child: CircularProgressIndicator());
//     // }

//     final actual = stockViewModel.stockData!.prices;
//     final linearPredictions = stockViewModel.linearPredictions!;
//     final decisionTreePredictions = stockViewModel.decisionTreePredictions!;
//     final lstmPredictions = stockViewModel.lstmPredictions!;

//     return Scaffold(
//       appBar: AppBar(title: Text('Stock Predictions')),
//       body: Column(
//         children: [
//           PerformanceTable({
//             'Linear Regression': 5.4, // Placeholder MAE values.
//             'Decision Tree': 6.1,
//             'LSTM': 4.7,
//           }),
//           Expanded(
//             // child: LineChartWidget(actual, linearPredictions),
//             child: LineChartWidget(actual, linearPredictions),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../viewmodels/stock_viewmodel.dart';
// import '../widgets/performance_table.dart';
// import '../widgets/line_chart_widget.dart';

// class StockPredictionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final stockViewModel = Provider.of<StockViewModel>(context);

//     // Set static data on first build
//     if (stockViewModel.stockData == null) {
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         stockViewModel.setStaticData();
//       });
//     }

//     if (stockViewModel.stockData == null) {
//       return Scaffold(
//         appBar: AppBar(title: Text('Stock Predictions')),
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }

//     final actual = stockViewModel.stockData!.prices;
//     final linearPredictions = stockViewModel.linearPredictions!;
//     final decisionTreePredictions = stockViewModel.decisionTreePredictions!;
//     final lstmPredictions = stockViewModel.lstmPredictions!;

//     return Scaffold(
//       appBar: AppBar(title: Text('Stock Predictions')),
//       body: Column(
//         children: [
//           PerformanceTable({
//             'Linear Regression': 5.4,
//             'Decision Tree': 6.1,
//             'LSTM': 4.7,
//           }),
//           Expanded(
//             child: LineChartWidget(actual,  actual: [], predictions: [], decisionTreePredictions: [], lstmPredictions: [],),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../viewmodels/stock_viewmodel.dart';
// import '../widgets/performance_table.dart';
// import '../widgets/line_chart_widget.dart';

// class StockPredictionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final stockViewModel = Provider.of<StockViewModel>(context);

//     // Set static data on first build
//     if (stockViewModel.stockData == null) {
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         stockViewModel.setStaticData();
//       });
//     }

//     if (stockViewModel.stockData == null) {
//       return Scaffold(
//         appBar: AppBar(title: Text('Stock Predictions')),
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }

//     final actual = stockViewModel.stockData!.prices;
//     final linearPredictions = stockViewModel.linearPredictions!;
//     final decisionTreePredictions = stockViewModel.decisionTreePredictions!;
//     final lstmPredictions = stockViewModel.lstmPredictions!;

//     return Scaffold(
//       appBar: AppBar(title: Text('Stock Predictions')),
//       body: Column(
//         children: [
//           PerformanceTable({
//             'Linear Regression': 5.4,
//             'Decision Tree': 6.1,
//             'LSTM': 4.7,
//           }),
//           Expanded(
//             child: LineChartWidget(
//               actual: actual,
//               predictions: linearPredictions,
//               decisionTreePredictions: decisionTreePredictions,
//               lstmPredictions: lstmPredictions,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../viewmodels/stock_viewmodel.dart';
// import '../widgets/performance_table.dart';
// import '../widgets/line_chart_widget.dart';

// class StockPredictionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final stockViewModel = Provider.of<StockViewModel>(context);

//     // Set static data on first build
//     if (stockViewModel.stockData == null) {
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         stockViewModel.setStaticData();
//       });
//     }

//     if (stockViewModel.stockData == null) {
//       return Scaffold(
//         appBar: AppBar(title: Text('Stock Predictions')),
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }

//     final actual = stockViewModel.stockData!.prices;
//     final linearPredictions = stockViewModel.linearPredictions!;
//     final decisionTreePredictions = stockViewModel.decisionTreePredictions!;
//     final lstmPredictions = stockViewModel.lstmPredictions!;

//     // Example performance metrics
//     final performanceMetrics = {
//       'Linear Regression': 5.4, // Placeholder MAE values.
//       'Decision Tree': 6.1,
//       'LSTM': 4.7,
//     };

//     return Scaffold(
//       appBar: AppBar(title: Text('Stock Predictions')),
//       body: Column(
//         children: [
//           PerformanceTable(performanceMetrics),
//           Expanded(
//             child: LineChartWidget(
//               actual: actual,
//               predictions: linearPredictions,
//               decisionTreePredictions: decisionTreePredictions,
//               lstmPredictions: lstmPredictions,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../viewmodels/stock_viewmodel.dart';
// import '../widgets/performance_table.dart';
// import '../widgets/line_chart_widget.dart';
// import 'dart:math';

// class StockPredictionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final stockViewModel = Provider.of<StockViewModel>(context);

//     // Set static data on first build
//     if (stockViewModel.stockData == null) {
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         stockViewModel.setStaticData();
//       });
//     }

//     if (stockViewModel.stockData == null) {
//       return Scaffold(
//         appBar: AppBar(title: Text('Stock Predictions')),
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }

//     final actual = stockViewModel.stockData!.prices;
//     final linearPredictions = stockViewModel.linearPredictions!;
//     final decisionTreePredictions = stockViewModel.decisionTreePredictions!;
//     final lstmPredictions = stockViewModel.lstmPredictions!;

//     // Calculate MAE, RMSE, and R² for each algorithm
//     double linearMAE = calculateMAE(actual, linearPredictions);
//     double decisionTreeMAE = calculateMAE(actual, decisionTreePredictions);
//     double lstmMAE = calculateMAE(actual, lstmPredictions);

//     double linearRMSE = calculateRMSE(actual, linearPredictions);
//     double decisionTreeRMSE = calculateRMSE(actual, decisionTreePredictions);
//     double lstmRMSE = calculateRMSE(actual, lstmPredictions);

//     double linearRSquared = calculateRSquared(actual, linearPredictions);
//     double decisionTreeRSquared = calculateRSquared(actual, decisionTreePredictions);
//     double lstmRSquared = calculateRSquared(actual, lstmPredictions);

//     return Scaffold(
//       appBar: AppBar(title: Text('Stock Predictions')),
//       body: Column(
//         children: [
//           // Performance Table showing MAE, RMSE, and R² for each algorithm
//           PerformanceTable({
//             'Linear Regression': {
//               'MAE': linearMAE,
//               'RMSE': linearRMSE,
//               'R²': linearRSquared
//             },
//             'Decision Tree': {
//               'MAE': decisionTreeMAE,
//               'RMSE': decisionTreeRMSE,
//               'R²': decisionTreeRSquared
//             },
//             'LSTM': {
//               'MAE': lstmMAE,
//               'RMSE': lstmRMSE,
//               'R²': lstmRSquared
//             },
//           }),

//           // Line chart to visualize the actual and predicted data
//           Expanded(
//             child: LineChartWidget(
//               actual: actual,
//               predictions: linearPredictions,
//               decisionTreePredictions: decisionTreePredictions,
//               lstmPredictions: lstmPredictions,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // MAE Calculation
//   double calculateMAE(List<double> actual, List<double> predicted) {
//     double sum = 0.0;
//     for (int i = 0; i < actual.length; i++) {
//       sum += (actual[i] - predicted[i]).abs();
//     }
//     return sum / actual.length;
//   }

//   // RMSE Calculation
//   double calculateRMSE(List<double> actual, List<double> predicted) {
//     double sum = 0.0;
//     for (int i = 0; i < actual.length; i++) {
//       sum += pow(actual[i] - predicted[i], 2).toDouble();
//     }
//     return sqrt(sum / actual.length);
//   }

//   // R² Calculation
//   double calculateRSquared(List<double> actual, List<double> predicted) {
//     double meanActual = actual.reduce((a, b) => a + b) / actual.length;
//     double ssTotal = 0.0;
//     double ssResidual = 0.0;

//     for (int i = 0; i < actual.length; i++) {
//       ssTotal += pow(actual[i] - meanActual, 2).toDouble();
//       ssResidual += pow(actual[i] - predicted[i], 2).toDouble();
//     }

//     return 1 - (ssResidual / ssTotal);
//   }

// }

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../viewmodels/stock_viewmodel.dart';
// import '../widgets/performance_table.dart';
// import '../widgets/line_chart_widget.dart';

// class StockPredictionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final stockViewModel = Provider.of<StockViewModel>(context);

//     // Set static data on first build
//     if (stockViewModel.stockData == null) {
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         stockViewModel.setStaticData();
//       });
//     }

//     if (stockViewModel.stockData == null) {
//       return Scaffold(
//         appBar: AppBar(title: Text('Stock Predictions')),
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }

//     final actual = stockViewModel.stockData!.prices;
//     final linearPredictions = stockViewModel.linearPredictions!;
//     final decisionTreePredictions = stockViewModel.decisionTreePredictions!;
//     final lstmPredictions = stockViewModel.lstmPredictions!;

//     return Scaffold(
//       appBar: AppBar(title: Text('Stock Predictions')),
//       body: Column(
//         children: [
//           // Performance Table (now without MAE, RMSE, and R²)
//           PerformanceTable({
//             'Linear Regression': {
//               'MAE': 0.0, // You can replace with actual static values later
//               'RMSE': 0.0,
//               'R²': 0.0,
//             },
//             'Decision Tree': {
//               'MAE': 0.0,
//               'RMSE': 0.0,
//               'R²': 0.0,
//             },
//             'LSTM': {
//               'MAE': 0.0,
//               'RMSE': 0.0,
//               'R²': 0.0,
//             },
//           }),

//           // Line chart to visualize the actual and predicted data
//           Expanded(
//             child: LineChartWidget(
//               actual: actual,
//               predictions: linearPredictions,
//               decisionTreePredictions: decisionTreePredictions,
//               lstmPredictions: lstmPredictions,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../viewmodels/stock_viewmodel.dart';
// import '../widgets/performance_table.dart';
// import '../widgets/line_chart_widget.dart';

// class StockPredictionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final stockViewModel = Provider.of<StockViewModel>(context);

//     // Set static data on first build
//     if (stockViewModel.stockData == null) {
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         stockViewModel.setStaticData();
//       });
//     }

//     if (stockViewModel.stockData == null) {
//       return Scaffold(
//         appBar: AppBar(title: Text('Stock Predictions')),
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }

//     final actual = stockViewModel.stockData!.prices;
//     final linearPredictions = stockViewModel.linearPredictions!;
//     final decisionTreePredictions = stockViewModel.decisionTreePredictions!;
//     final lstmPredictions = stockViewModel.lstmPredictions!;

//     print('Actual Data Length: ${actual.length}');
//     print('Linear Predictions Length: ${linearPredictions.length}');
//     print('Decision Tree Predictions Length: ${decisionTreePredictions.length}');
//     print('LSTM Predictions Length: ${lstmPredictions.length}');

//     // Ensure that all lists have the same length to avoid errors
//     if (actual.length != linearPredictions.length ||
//         actual.length != decisionTreePredictions.length ||
//         actual.length != lstmPredictions.length) {
//       return Scaffold(
//         appBar: AppBar(title: Text('Stock Predictions')),
//         body: Center(
//             child:
//                 Text('Prediction data and actual data lengths do not match!')),
//       );
//     }

//     // Calculate MAE, RMSE, and R² for each algorithm (use dummy data for now)
//     double linearMAE = 0.0; // Replace with actual calculation
//     double decisionTreeMAE = 0.0; // Replace with actual calculation
//     double lstmMAE = 0.0; // Replace with actual calculation

//     double linearRMSE = 0.0; // Replace with actual calculation
//     double decisionTreeRMSE = 0.0; // Replace with actual calculation
//     double lstmRMSE = 0.0; // Replace with actual calculation

//     double linearRSquared = 0.0; // Replace with actual calculation
//     double decisionTreeRSquared = 0.0; // Replace with actual calculation
//     double lstmRSquared = 0.0; // Replace with actual calculation

//     // Create the data map for the PerformanceTable
//     Map<String, Map<String, double>> performanceData = {
//       'Linear Regression': {
//         'MAE': linearMAE,
//         'RMSE': linearRMSE,
//         'R²': linearRSquared,
//       },
//       'Decision Tree': {
//         'MAE': decisionTreeMAE,
//         'RMSE': decisionTreeRMSE,
//         'R²': decisionTreeRSquared,
//       },
//       'LSTM': {
//         'MAE': lstmMAE,
//         'RMSE': lstmRMSE,
//         'R²': lstmRSquared,
//       },
//     };

//     return Scaffold(
//       appBar: AppBar(title: Text('Stock Predictions')),
//       body: Column(
//         children: [
//           // Performance Table displaying MAE, RMSE, and R² for each algorithm
//           // PerformanceTable(performanceData),
//           PerformanceTable({
//             'Linear Regression': {
//               'MAE': linearMAE,
//               'RMSE': linearRMSE,
//               'R²': linearRSquared,
//             },
//             'Decision Tree': {
//               'MAE': decisionTreeMAE,
//               'RMSE': decisionTreeRMSE,
//               'R²': decisionTreeRSquared,
//             },
//             'LSTM': {
//               'MAE': lstmMAE,
//               'RMSE': lstmRMSE,
//               'R²': lstmRSquared,
//             },
//           }),

//           // Line chart to visualize the actual and predicted data
//           Expanded(
//             child: LineChartWidget(
//               actual: actual,
//               predictions: linearPredictions,
//               decisionTreePredictions: decisionTreePredictions,
//               lstmPredictions: lstmPredictions,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_algo_comparison/core/sidebar/sidebar.dart';
import '../../viewmodels/stock_prediction_viewmodel/stock_viewmodel.dart';
import '../../widgets/stock_prediction_widget/performance_table.dart';
import '../../widgets/stock_prediction_widget/line_chart_widget.dart';
import 'dart:math';

class StockPredictionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stockViewModel = Provider.of<StockViewModel>(context);

    // Set static data on first build
    if (stockViewModel.stockData == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        stockViewModel.setStaticData();
      });
    }

    if (stockViewModel.stockData == null) {
      return Scaffold(
        appBar: AppBar(title: Text('Stock Predictions')),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    // Define static data (ensure lengths match)
    final List<double> actual = [100.0, 105.0, 110.0, 120.0, 125.0, 130.0];

    final List<double> linearPredictions = [101.0, 106.0, 109.0, 121.0, 126.0, 128.0]; // Added 6th value
    final List<double> decisionTreePredictions = [102.0, 107.0, 111.0, 122.0, 127.0, 132.0]; // 6 points
    final List<double> lstmPredictions = [100.5, 105.5, 109.5, 121.5, 126.5, 131.5]; // 6 points

    // Calculate MAE, RMSE, and R² for each algorithm
    double linearMAE = calculateMAE(actual, linearPredictions);
    double decisionTreeMAE = calculateMAE(actual, decisionTreePredictions);
    double lstmMAE = calculateMAE(actual, lstmPredictions);

    double linearRMSE = calculateRMSE(actual, linearPredictions);
    double decisionTreeRMSE = calculateRMSE(actual, decisionTreePredictions);
    double lstmRMSE = calculateRMSE(actual, lstmPredictions);

    double linearRSquared = calculateRSquared(actual, linearPredictions);
    double decisionTreeRSquared = calculateRSquared(actual, decisionTreePredictions);
    double lstmRSquared = calculateRSquared(actual, lstmPredictions);

    return Scaffold(
      appBar: AppBar(title: Text('Stock Predictions')),
      drawer: SidebarScreen(),
      body: Column(
        children: [
          // Performance Table showing MAE, RMSE, and R² for each algorithm
          PerformanceTable({
            'Linear Regression': {
              'MAE': linearMAE,
              'RMSE': linearRMSE,
              'R²': linearRSquared
            },
            'Decision Tree': {
              'MAE': decisionTreeMAE,
              'RMSE': decisionTreeRMSE,
              'R²': decisionTreeRSquared
            },
            'LSTM': {
              'MAE': lstmMAE,
              'RMSE': lstmRMSE,
              'R²': lstmRSquared
            },
          }),

          // Line chart to visualize the actual and predicted data
          Expanded(
            child: LineChartWidget(
              actual: actual,
              predictions: linearPredictions,
              decisionTreePredictions: decisionTreePredictions,
              lstmPredictions: lstmPredictions,
            ),
          ),
        ],
      ),
    );
  }

  // MAE Calculation
  double calculateMAE(List<double> actual, List<double> predicted) {
    double sum = 0.0;
    for (int i = 0; i < actual.length; i++) {
      sum += (actual[i] - predicted[i]).abs();
    }
    return sum / actual.length;
  }

  // RMSE Calculation
  double calculateRMSE(List<double> actual, List<double> predicted) {
    double sum = 0.0;
    for (int i = 0; i < actual.length; i++) {
      sum += pow(actual[i] - predicted[i], 2).toDouble();
    }
    return sqrt(sum / actual.length);
  }

  // R² Calculation
  double calculateRSquared(List<double> actual, List<double> predicted) {
    double meanActual = actual.reduce((a, b) => a + b) / actual.length;
    double ssTotal = 0.0;
    double ssResidual = 0.0;

    for (int i = 0; i < actual.length; i++) {
      ssTotal += pow(actual[i] - meanActual, 2).toDouble();
      ssResidual += pow(actual[i] - predicted[i], 2).toDouble();
    }

    return 1 - (ssResidual / ssTotal);
  }
}





// Worst Algo

// class StockPredictionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final stockViewModel = Provider.of<StockViewModel>(context);

//     // Set static data on first build
//     if (stockViewModel.stockData == null) {
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         stockViewModel.setStaticData();
//       });
//     }

//     if (stockViewModel.stockData == null) {
//       return Scaffold(
//         appBar: AppBar(title: Text('Stock Predictions')),
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }

//     final actual = stockViewModel.stockData!.prices;
//     final linearPredictions = stockViewModel.linearPredictions!;
//     final decisionTreePredictions = stockViewModel.decisionTreePredictions!;
//     final lstmPredictions = stockViewModel.lstmPredictions!;

//     // Calculate MAE, RMSE, and R² for each algorithm
//     double linearMAE = calculateMAE(actual, linearPredictions);
//     double decisionTreeMAE = calculateMAE(actual, decisionTreePredictions);
//     double lstmMAE = calculateMAE(actual, lstmPredictions);

//     double linearRMSE = calculateRMSE(actual, linearPredictions);
//     double decisionTreeRMSE = calculateRMSE(actual, decisionTreePredictions);
//     double lstmRMSE = calculateRMSE(actual, lstmPredictions);

//     double linearRSquared = calculateRSquared(actual, linearPredictions);
//     double decisionTreeRSquared = calculateRSquared(actual, decisionTreePredictions);
//     double lstmRSquared = calculateRSquared(actual, lstmPredictions);

//     // Determine the worst algorithm
//     String worstAlgorithm = determineWorstAlgorithm(
//       linearMAE: linearMAE,
//       decisionTreeMAE: decisionTreeMAE,
//       lstmMAE: lstmMAE,
//       linearRMSE: linearRMSE,
//       decisionTreeRMSE: decisionTreeRMSE,
//       lstmRMSE: lstmRMSE,
//       linearRSquared: linearRSquared,
//       decisionTreeRSquared: decisionTreeRSquared,
//       lstmRSquared: lstmRSquared,
//     );

//     return Scaffold(
//       appBar: AppBar(title: Text('Stock Predictions')),
//       body: Column(
//         children: [
//           // Performance Table showing MAE, RMSE, and R² for each algorithm
//           PerformanceTable({
//             'Linear Regression': {
//               'MAE': linearMAE,
//               'RMSE': linearRMSE,
//               'R²': linearRSquared
//             },
//             'Decision Tree': {
//               'MAE': decisionTreeMAE,
//               'RMSE': decisionTreeRMSE,
//               'R²': decisionTreeRSquared
//             },
//             'LSTM': {
//               'MAE': lstmMAE,
//               'RMSE': lstmRMSE,
//               'R²': lstmRSquared
//             },
//           }),

//           // Display the worst algorithm based on the performance metrics
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               'Worst Algorithm: $worstAlgorithm',
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//           ),

//           // Line chart to visualize the actual and predicted data
//           Expanded(
//             child: LineChartWidget(
//               actual: actual,
//               predictions: linearPredictions,
//               decisionTreePredictions: decisionTreePredictions,
//               lstmPredictions: lstmPredictions,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // MAE Calculation
//   double calculateMAE(List<double> actual, List<double> predicted) {
//     double sum = 0.0;
//     for (int i = 0; i < actual.length; i++) {
//       sum += (actual[i] - predicted[i]).abs();
//     }
//     return sum / actual.length;
//   }

//   // RMSE Calculation
//   double calculateRMSE(List<double> actual, List<double> predicted) {
//     double sum = 0.0;
//     for (int i = 0; i < actual.length; i++) {
//       sum += pow(actual[i] - predicted[i], 2).toDouble();
//     }
//     return sqrt(sum / actual.length);
//   }

//   // R² Calculation
//   double calculateRSquared(List<double> actual, List<double> predicted) {
//     double meanActual = actual.reduce((a, b) => a + b) / actual.length;
//     double ssTotal = 0.0;
//     double ssResidual = 0.0;

//     for (int i = 0; i < actual.length; i++) {
//       ssTotal += pow(actual[i] - meanActual, 2).toDouble();
//       ssResidual += pow(actual[i] - predicted[i], 2).toDouble();
//     }

//     return 1 - (ssResidual / ssTotal);
//   }

//   // Determine the worst algorithm based on MAE, RMSE, and R²
//   String determineWorstAlgorithm({
//     required double linearMAE,
//     required double decisionTreeMAE,
//     required double lstmMAE,
//     required double linearRMSE,
//     required double decisionTreeRMSE,
//     required double lstmRMSE,
//     required double linearRSquared,
//     required double decisionTreeRSquared,
//     required double lstmRSquared,
//   }) {
//     // Compare MAE values
//     double worstMAE = max(max(linearMAE, decisionTreeMAE), lstmMAE);

//     // Compare RMSE values
//     double worstRMSE = max(max(linearRMSE, decisionTreeRMSE), lstmRMSE);

//     // Compare R² values
//     double worstRSquared = min(min(linearRSquared, decisionTreeRSquared), lstmRSquared);

//     // Determine the worst algorithm based on combined performance
//     if (worstMAE == linearMAE && worstRMSE == linearRMSE && worstRSquared == linearRSquared) {
//       return "Linear Regression";
//     } else if (worstMAE == decisionTreeMAE && worstRMSE == decisionTreeRMSE && worstRSquared == decisionTreeRSquared) {
//       return "Decision Tree";
//     } else {
//       return "LSTM";
//     }
//   }
// }

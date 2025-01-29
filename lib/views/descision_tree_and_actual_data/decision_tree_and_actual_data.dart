import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_algo_comparison/core/sidebar/sidebar.dart';
import 'package:stock_algo_comparison/widgets/decision_tree_and_actual_data_widget/decision_tree_and_actual_data_widget.dart';
import '../../viewmodels/stock_prediction_viewmodel/stock_viewmodel.dart';
import '../../widgets/stock_prediction_widget/performance_table.dart';
import 'dart:math';

class DecisionTreeAndActualData extends StatelessWidget {
  const DecisionTreeAndActualData({super.key});

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
        appBar: AppBar(title: const Text('Linear Regression and Actual Data')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    // Define static data (ensure lengths match)
    final List<double> actual = [100.0, 105.0, 110.0, 120.0, 125.0, 130.0];

    // final List<double> linearPredictions = [101.0, 106.0, 109.0, 121.0, 126.0, 128.0]; // Added 6th value
    final List<double> decisionTreePredictions = [102.0, 107.0, 111.0, 122.0, 127.0, 132.0]; // 6 points
    // final List<double> lstmPredictions = [100.5, 105.5, 109.5, 121.5, 126.5, 131.5]; // 6 points

    // Calculate MAE, RMSE, and R² for each algorithm
    // double linearMAE = calculateMAE(actual, linearPredictions);
    double decisionTreeMAE = calculateMAE(actual, decisionTreePredictions);
    // double lstmMAE = calculateMAE(actual, lstmPredictions);

    // double linearRMSE = calculateRMSE(actual, linearPredictions);
    double decisionTreeRMSE = calculateRMSE(actual, decisionTreePredictions);
    // double lstmRMSE = calculateRMSE(actual, lstmPredictions);

    // double linearRSquared = calculateRSquared(actual, linearPredictions);
    double decisionTreeRSquared = calculateRSquared(actual, decisionTreePredictions);
    // double lstmRSquared = calculateRSquared(actual, lstmPredictions);

    return Scaffold(
      appBar: AppBar(title: const Text('Stock Predictions')),
      drawer: const SidebarScreen(),
      body: Column(
        children: [
          // Performance Table showing MAE, RMSE, and R² for each algorithm
          PerformanceTable({
            // 'Linear Regression': {
            //   'MAE': linearMAE,
            //   'RMSE': linearRMSE,
            //   'R²': linearRSquared
            // },
            'Decision Tree': {
              'MAE': decisionTreeMAE,
              'RMSE': decisionTreeRMSE,
              'R²': decisionTreeRSquared
            },
            // 'LSTM': {
            //   'MAE': lstmMAE,
            //   'RMSE': lstmRMSE,
            //   'R²': lstmRSquared
            // },
          }),

          // Line chart to visualize the actual and predicted data
          Expanded(
            child: DecisionTreeAndActualDataWidget(
              actual: actual,
              // predictions: linearPredictions,
              decisionTreePredictions: decisionTreePredictions,
              // lstmPredictions: lstmPredictions,
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
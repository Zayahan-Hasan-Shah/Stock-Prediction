import 'package:flutter/material.dart';
import 'package:stock_algo_comparison/core/navigation/app_navigation.dart';
import 'package:stock_algo_comparison/views/best_algo/best_algo_prediction.dart';
import 'package:stock_algo_comparison/views/descision_tree_and_actual_data/decision_tree_and_actual_data.dart';
import 'package:stock_algo_comparison/views/linear_and_actual_data/linear_and_actual_data.dart';
import 'package:stock_algo_comparison/views/lstm_and_actual_data/lstm_and_actual_data.dart';
import 'package:stock_algo_comparison/views/stock_prediction_page/stock_prediction_screen.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Drawer Header
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Stock prediction',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                
              ],
            ),
          ),

          // Home
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              AppNavigator.pushReplacement(context, StockPredictionScreen());
            },
          ),
          
          // Best Algorithm
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Best Algo'),
            onTap: () {
              AppNavigator.pushReplacement(context, BestAlgoPredictionScreen());
            },
          ),
          
          // Linear and actual data
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Linear Algo and Actual Data'),
            onTap: () {
              AppNavigator.pushReplacement(context, LinearAndActualData());
            },
          ),
          
          // LSTM and actual data
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('LSTM and Actual Data'),
            onTap: () {
              AppNavigator.pushReplacement(context, LstmAndActualData());
            },
          ),
          
          // Decision Tree and actual data
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Decision Tree and Actual Data'),
            onTap: () {
              AppNavigator.pushReplacement(context, DecisionTreeAndActualData());
            },
          ),

          
        ],
      ),
    );
  }
}
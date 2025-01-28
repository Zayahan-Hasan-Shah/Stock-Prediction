// import 'package:flutter/material.dart';
// import '../models/stock_data_model.dart';
// import '../services/prediction_service.dart';

// class StockViewModel with ChangeNotifier {
//   final PredictionService _predictionService = PredictionService();
//   StockData? _stockData;
//   List<double>? _linearPredictions;
//   List<double>? _decisionTreePredictions;
//   List<double>? _lstmPredictions;

//   StockData? get stockData => _stockData;
//   List<double>? get linearPredictions => _linearPredictions;
//   List<double>? get decisionTreePredictions => _decisionTreePredictions;
//   List<double>? get lstmPredictions => _lstmPredictions;

//   void setStockData(StockData data) {
//     _stockData = data;
//     _linearPredictions =
//         _predictionService.performLinearRegression(data.prices);
//     _decisionTreePredictions =
//         _predictionService.performDecisionTree(data.prices);
//     _lstmPredictions = _predictionService.performLSTM(data.prices);
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';
import '../models/stock_data_model.dart';
import '../services/prediction_service.dart';

class StockViewModel with ChangeNotifier {
  final PredictionService _predictionService = PredictionService();
  StockData? _stockData;
  List<double>? _linearPredictions;
  List<double>? _decisionTreePredictions;
  List<double>? _lstmPredictions;

  StockData? get stockData => _stockData;
  List<double>? get linearPredictions => _linearPredictions;
  List<double>? get decisionTreePredictions => _decisionTreePredictions;
  List<double>? get lstmPredictions => _lstmPredictions;

  void setStaticData() {
    // Static stock price data
    final data = StockData([150.0, 152.5, 151.2, 153.8, 154.5, 155.3]);
    _stockData = data;
    _linearPredictions = _predictionService.performLinearRegression(data.prices);
    _decisionTreePredictions = _predictionService.performDecisionTree(data.prices);
    _lstmPredictions = _predictionService.performLSTM(data.prices);
    notifyListeners();
  }
}

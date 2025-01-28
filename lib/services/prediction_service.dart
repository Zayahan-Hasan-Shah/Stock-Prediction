// class PredictionService {
//   List<double> performLinearRegression(List<double> data) {
//     // Simple example of a linear regression model.
//     // Replace with a proper implementation.
//     List<double> predictions = [];
//     for (var i = 0; i < data.length - 1; i++) {
//       predictions.add(data[i] + (data[i + 1] - data[i]) * 0.5);
//     }
//     return predictions;
//   }

//   List<double> performDecisionTree(List<double> data) {
//     // Example Decision Tree logic placeholder.
//     return data.map((price) => price * 1.01).toList();
//   }

//   List<double> performLSTM(List<double> data) {
//     // Placeholder for LSTM predictions.
//     return data.map((price) => price * 0.99).toList();
//   }
// }

class PredictionService {
  List<double> performLinearRegression(List<double> data) {
    List<double> predictions = [];
    for (var i = 0; i < data.length - 1; i++) {
      predictions.add(data[i] + (data[i + 1] - data[i]) * 0.5);
    }
    return predictions;
  }

  List<double> performDecisionTree(List<double> data) {
    return data.map((price) => price * 1.01).toList();
  }

  List<double> performLSTM(List<double> data) {
    return data.map((price) => price * 0.99).toList();
  }
}

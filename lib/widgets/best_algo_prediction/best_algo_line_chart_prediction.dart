import 'package:flutter/material.dart';

class BestAlgoLineChartPrediction extends StatelessWidget {
  final List<double> actual;
  final List<double> predictions;
  final List<double> decisionTreePredictions;
  final List<double> lstmPredictions;
  final String bestAlgorithm;

  const BestAlgoLineChartPrediction(
    this.actual, {
    super.key,
    required this.predictions,
    required this.decisionTreePredictions,
    required this.lstmPredictions,
    required this.bestAlgorithm,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LineChartPainter(
        actual: actual,
        predictions: predictions,
        decisionTreePredictions: decisionTreePredictions,
        lstmPredictions: lstmPredictions,
        bestAlgorithm: bestAlgorithm, // Pass best algorithm here
      ),
    );
  }
}

class LineChartPainter extends CustomPainter {
  final List<double> actual;
  final List<double> predictions;
  final List<double> decisionTreePredictions;
  final List<double> lstmPredictions;
  final String bestAlgorithm;

  LineChartPainter({
    required this.actual,
    required this.predictions,
    required this.decisionTreePredictions,
    required this.lstmPredictions,
    required this.bestAlgorithm,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint linePaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final Paint decisionTreePaint = Paint()
      ..color = Colors.green
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final Paint lstmPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final Paint actualPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // Set the graph offset
    double offsetX = 50;
    double offsetY = size.height - 50;
    // double scaleX = size.width / (actual.length - 1);
    double scaleY = size.height / 200;

    // Draw the actual data line
    for (int i = 0; i < actual.length - 1; i++) {
      canvas.drawLine(
        Offset(offsetX * i, offsetY - actual[i] * scaleY),
        Offset(offsetX * (i + 1), offsetY - actual[i + 1] * scaleY),
        actualPaint,
      );
    }

    // Draw the predictions (linear)
    for (int i = 0; i < predictions.length - 1; i++) {
      canvas.drawLine(
        Offset(offsetX * i, offsetY - predictions[i] * scaleY),
        Offset(offsetX * (i + 1), offsetY - predictions[i + 1] * scaleY),
        linePaint,
      );
    }

    // Draw the decision tree predictions
    for (int i = 0; i < decisionTreePredictions.length - 1; i++) {
      canvas.drawLine(
        Offset(offsetX * i, offsetY - decisionTreePredictions[i] * scaleY),
        Offset(offsetX * (i + 1),
            offsetY - decisionTreePredictions[i + 1] * scaleY),
        decisionTreePaint,
      );
    }

    // Draw the LSTM predictions
    for (int i = 0; i < lstmPredictions.length - 1; i++) {
      canvas.drawLine(
        Offset(offsetX * i, offsetY - lstmPredictions[i] * scaleY),
        Offset(offsetX * (i + 1), offsetY - lstmPredictions[i + 1] * scaleY),
        lstmPaint,
      );
    }

    // Draw the best algorithm text on the chart
    TextSpan span = TextSpan(
      style: const TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      text: 'Best Algorithm: $bestAlgorithm',
    );
    TextPainter tp = TextPainter(
      text: span,
      textAlign: TextAlign.left,
      textDirection: TextDirection.ltr,
    );
    tp.layout();
    tp.paint(canvas, const Offset(20, 20)); // Position the text on the chart
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

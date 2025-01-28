// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class PolygonAPI {
//   final String apiKey;

//   PolygonAPI(this.apiKey);

//   Future<List<double>> fetchStockPrices(String ticker) async {
//     final response = await http.get(Uri.parse(
//         // 'https://api.polygon.io/v2/aggs/ticker/$ticker/prev?apiKey=$apiKey'
//         // 'https://api.polygon.io/v2/aggs/ticker/AAPL/range/1/day/2023-01-09/2023-01-09?apiKey=4o2jMoH966zCGZzELYYOUPveC0qnOv9Q'
//         // 'https://api.polygon.io/v2/aggs/ticker/AAPL/range/1/day/2023-01-09/2023-02-10?adjusted=true&sort=asc&apiKey=4o2jMoH966zCGZzELYYOUPveC0qnOv9Q'
//         'https://api.polygon.io/v2/aggs/ticker/AAPL/range/1/day/2023-01-09/2023-02-10?adjusted=true&sort=asc&apiKey=QycZayn19QgKCHIzP6CEfh1DVcZI5DTH'
//         ));
//     print(response.statusCode);
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body)['results'] as List;
//       return data.map((item) => item['c'] as double).toList();
//     } else {
//       throw Exception('Failed to fetch stock data');
//     }
//   }
// }

class PolygonAPI {
  Future<List<double>> fetchStockPrices(String ticker) async {
    // Simulated stock prices (static data)
    return Future.value([150.0, 152.5, 151.2, 153.8, 154.5, 155.3]);
  }
}
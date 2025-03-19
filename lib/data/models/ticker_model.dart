import 'package:ticker_chart/domain/entities/ticker.dart';

class TickerModel extends Ticker {
  TickerModel({required super.symbol, required super.price});

  factory TickerModel.fromJson(Map<String, dynamic> json) {
    return TickerModel(
      symbol: json['symbol'],
      price: (json['price'] as num).toDouble(),
    );
  }
}

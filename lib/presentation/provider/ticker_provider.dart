import 'package:flutter/material.dart';
import 'package:ticker_chart/domain/entities/ticker.dart';
import 'package:ticker_chart/domain/usecases/get_ticker_stream.dart';

class TickerNotifier extends ChangeNotifier {
  final GetTickerStream getTickerStream;
  Ticker _ticker = Ticker(symbol: '', price: 0);

  TickerNotifier(this.getTickerStream) {
    _subscribeToStream();
  }

  Ticker get ticker => _ticker;

  void _subscribeToStream() {
    getTickerStream().listen((ticker) {
      _ticker = ticker;
      notifyListeners();
    });
  }
}

import 'package:ticker_chart/data/models/ticker_model.dart';

abstract class TickerRepository {
  Future<TickerModel> fetchTicker();
  Stream<TickerModel> getTickerStream();
}

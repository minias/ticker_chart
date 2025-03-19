import 'package:ticker_chart/domain/entities/ticker.dart';

abstract class TickerRepository {
  Stream<Ticker> getTickerStream();
}

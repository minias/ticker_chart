import 'package:ticker_chart/domain/entities/ticker.dart';
import 'package:ticker_chart/domain/repositories/ticker_repository.dart';

class GetTickerStream {
  final TickerRepository repository;

  GetTickerStream(this.repository);

  Stream<Ticker> call() {
    return repository.getTickerStream();
  }
}

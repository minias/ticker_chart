import 'package:ticker_chart/core/errors/codes.dart';
import 'package:ticker_chart/data/models/ticker_model.dart';
import 'package:ticker_chart/data/repositories/ticker_repository.dart';
import 'package:ticker_chart/data/repositories/upbit_ticker_repository.dart';
import 'package:ticker_chart/data/repositories/binance_ticker_repository.dart';
import 'package:ticker_chart/data/repositories/coinbase_ticker_repository.dart';
import 'package:ticker_chart/core/errors/app_exceptions.dart';
import 'package:ticker_chart/core/errors/error_codes.dart';

class TickerRepositoryImpl implements TickerRepository {
  final UpbitTickerRepository upbitRepository = UpbitTickerRepository();
  final BinanceTickerRepository binanceRepository = BinanceTickerRepository();
  final CoinbaseTickerRepository coinbaseRepository =
      CoinbaseTickerRepository();

  @override
  Future<TickerModel> fetchTicker() async {
    throw UnimplementedError(ErrorCodes.unimplementedError);
  }

  Future<List<TickerModel>> fetchAllTickers() async {
    try {
      final upbitTicker = await upbitRepository.fetchTicker();
      final binanceTicker = await binanceRepository.fetchTicker();
      final coinbaseTicker = await coinbaseRepository.fetchTicker();

      return [upbitTicker, binanceTicker, coinbaseTicker];
    } catch (e) {
      throw ServerException('${Codes.serverError}: $e');
    }
  }

  @override
  Stream<TickerModel> getTickerStream() {
    throw UnimplementedError();
  }
}

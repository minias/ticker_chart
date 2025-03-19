import 'package:http/http.dart' as http;
import 'package:ticker_chart/core/errors/codes.dart';
import 'package:ticker_chart/data/models/ticker_model.dart';
import 'package:ticker_chart/data/repositories/ticker_repository.dart';
import 'package:ticker_chart/config/config_loader.dart';
import 'package:ticker_chart/core/errors/app_exceptions.dart';
import 'package:ticker_chart/core/errors/error_codes.dart';
import 'package:ticker_chart/core/network/ticker_response_parser.dart';

class BinanceTickerRepository implements TickerRepository {
  @override
  Future<TickerModel> fetchTicker() async {
    return _fetchTicker(Exchange.binance, Config.api.binance);
  }

  Future<TickerModel> _fetchTicker(Exchange exchange, String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == Codes.seccess) {
        return TickerResponseParser.parseResponse(exchange, response.body);
      } else {
        throw ServerException(
          '${ErrorCodes.failedToFetchBinance}: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw NetworkException('${ErrorCodes.failedToFetchBinance}: $e');
    }
  }

  @override
  Stream<TickerModel> getTickerStream() {
    throw UnimplementedError();
  }
}

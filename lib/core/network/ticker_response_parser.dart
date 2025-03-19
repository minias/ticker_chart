import 'dart:convert';
import 'package:ticker_chart/data/models/ticker_model.dart';
import 'package:ticker_chart/core/errors/app_exceptions.dart';
import 'package:ticker_chart/core/errors/error_codes.dart';

enum Exchange { upbit, binance, coinbase }

class TickerResponseParser {
  static TickerModel parseResponse(Exchange exchange, String responseBody) {
    try {
      final data = jsonDecode(responseBody);

      switch (exchange) {
        case Exchange.upbit:
          return TickerModel.fromJson(data[0]); // Upbit 응답은 리스트 형태
        case Exchange.binance:
          return TickerModel.fromJson(data); // Binance는 JSON 객체
        case Exchange.coinbase:
          return TickerModel.fromJson(data['data']);
      }
    } catch (e) {
      throw ParsingException(
        '${ErrorCodes.parsingError} from ${exchange.name}: $e',
      );
    }
  }
}

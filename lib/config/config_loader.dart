import 'package:yaml/yaml.dart';
import 'package:flutter/services.dart';

class Config {
  static late String upbitApiUrl;
  static late String binanceApiUrl;
  static late String coinbaseApiUrl;
  static late String binanceWebSocketUrl;

  static Future<void> loadConfig() async {
    final yamlString = await rootBundle.loadString('assets/config/config.yml');
    final yamlMap = loadYaml(yamlString);

    upbitApiUrl = yamlMap['api']['upbit'];
    binanceApiUrl = yamlMap['api']['binance'];
    coinbaseApiUrl = yamlMap['api']['coinbase'];
    binanceWebSocketUrl = yamlMap['websocket']['binance'];
  }
}

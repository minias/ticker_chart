import 'package:yaml/yaml.dart';
import 'dart:io';
import 'package:ticker_chart/data/models/config_model.dart';

class Config {
  static late ApiConfig api;
  static late WebSocketConfig websocket;

  static Future<void> loadConfig() async {
    final file = File('config.yml');
    final yamlString = await file.readAsString();
    final yamlMap = loadYaml(yamlString);

    api = ApiConfig(
      upbit: yamlMap['api']['upbit'],
      binance: yamlMap['api']['binance'],
      coinbase: yamlMap['api']['coinbase'],
    );

    websocket = WebSocketConfig(binance: yamlMap['websocket']['binance']);
  }
}

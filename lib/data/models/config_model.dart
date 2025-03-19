class ApiConfig {
  final String upbit;
  final String binance;
  final String coinbase;

  ApiConfig({
    required this.upbit,
    required this.binance,
    required this.coinbase,
  });
}

class WebSocketConfig {
  final String binance;

  WebSocketConfig({required this.binance});
}

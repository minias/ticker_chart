class AppException implements Exception {
  final String message;
  AppException(this.message) : super();

  @override
  String toString() => message;
}

class ServerException extends AppException {
  ServerException(super.message);
}

class NetworkException extends AppException {
  NetworkException(super.message);
}

class WebSocketException extends AppException {
  WebSocketException(super.message);
}

class ParsingException extends AppException {
  ParsingException(super.message);
}

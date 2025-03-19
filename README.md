# Ticker_Chart

TickerChart

## Information Architecture

```sh
├── android
├── ios
├── lib
│   ├── assets
│   │   └── config.yml
│   ├── config
│   │   └── config_loader.dart
│   ├── core
│   │   ├── errors
│   │   │   ├── app_exceptions.dart
│   │   │   ├── codes.dart
│   │   │   └── error_codes.dart
│   │   └── network
│   │       └── ticker_response_parser.dart
│   ├── data
│   │   ├── models
│   │   │   ├── config_model.dart
│   │   │   └── ticker_model.dart
│   │   ├── repositories
│   │   │   ├── binance_ticker_repository.dart
│   │   │   ├── coinbase_ticker_repository.dart
│   │   │   ├── ticker_repository.dart
│   │   │   ├── ticker_repository_impl.dart
│   │   │   └── upbit_ticker_repository.dart
│   │   └── sources
│   ├── domain
│   │   ├── entities
│   │   │   └── ticker.dart
│   │   ├── repositories
│   │   │   └── ticker_repository.dart
│   │   └── usecases
│   │       └── get_ticker_stream.dart
│   ├── main.dart
│   └── presentation
│       ├── pages
│       │   └── ticker_page.dart
│       ├── provider
│       │   └── ticker_provider.dart
│       └── widgets
└── test
```

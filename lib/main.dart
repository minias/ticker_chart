import 'package:flutter/material.dart';
import 'package:ticker_chart/config/config_loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.loadConfig(); // ⚡ 설정 로드

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticker Chart',
      home: Scaffold(
        appBar: AppBar(title: const Text('Ticker Chart')),
        body: const Center(child: Text('Welcome to Ticker Chart!')),
      ),
    );
  }
}

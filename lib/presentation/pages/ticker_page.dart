import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticker_chart/presentation/provider/ticker_provider.dart';

class TickerPage extends StatelessWidget {
  const TickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ticker = context.watch<TickerNotifier>().ticker;

    return Scaffold(
      appBar: AppBar(title: const Text('Ticker Chart')),
      body: Center(
        child: Text(
          '${ticker.symbol}: \$${ticker.price.toStringAsFixed(2)}',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

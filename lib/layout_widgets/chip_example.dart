import 'package:flutter/material.dart';

void main() => runApp(ChipExample());

class ChipExample extends StatelessWidget {
  const ChipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chip Example'),
        ),
        body: Center(
          child: Chip(
            label: const Text(
              'Flutter Chip',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
            elevation: 4,
            shadowColor: Colors.grey[800],
            padding: const EdgeInsets.all(8),
          ),
        ),
      ),
    );
  }
}

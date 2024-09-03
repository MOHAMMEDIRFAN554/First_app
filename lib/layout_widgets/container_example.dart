import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              color: Colors.amber[600],
              padding: const EdgeInsets.all(8),
              child: const Text('Hello'),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              width: 75,
              height: 75,
              color: Colors.amber[800],
              padding: const EdgeInsets.all(8),
              child: const Text('Hello'),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              width: 50,
              height: 50,
              color: Colors.amber[900],
              padding: const EdgeInsets.all(8),
              child: const Text('Hello'),
            )
          ],
        ),
      ),
    );
  }
}

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
          title: const Text('Align'),
        ),
        body: Center(
          child: Container(
            height: 120,
            width: 120,
            color: Colors.blue[50],
            child: const Align(
              alignment: Alignment.center,
              child: FlutterLogo(
                size: 75,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

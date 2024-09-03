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
          title: const Text('Stack'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.lime,
              ),
              const FlutterLogo()
            ],
          ),
        ),
      ),
    );
  }
}

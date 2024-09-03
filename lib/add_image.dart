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
          title: const Text('Image'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'assets/images/paper_rocket.png',
                  width: 300,
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/rocket.png',
                  width: 300,
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/paper_rocket.png',
                  width: 300,
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/rocket.png',
                  width: 300,
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

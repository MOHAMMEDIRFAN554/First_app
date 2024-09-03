import 'package:flutter/material.dart';

void main() {
  runApp(const GestureExample());
}

class GestureExample extends StatelessWidget {
  const GestureExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gesture Demo'),
        ),
        body: Center(
            child: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  print('Hello');
                },
                child: const Text('Tap Me!')),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Tap Me!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: () {
                print('Container Tapped!');
              },
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: const Center(
                  child: Text('Tap me!'),
                ),
              ),
              onTap: () {
                print('Hi... Tapped!!!...');
              },
            )
          ],
        )),
      ),
    );
  }
}

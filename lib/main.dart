import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20, inherit: true),
        padding: const EdgeInsets.all(16),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Demo App'),centerTitle: true,),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: style,
                  child: const Text('HELLO DQ'),
                  onPressed: () {
                    print('Hello DQ');
                  },
                ),
                const SizedBox(height: 30,),
                ElevatedButton(
                  style: style,
                  child: const Text('HELLO FAFA'),
                  onPressed: () {
                    print('Hello FAFA');
                  },
                ),
                const SizedBox(height: 30,),
                ElevatedButton(
                  style: style,
                  child: const Text('HELLO RAMBO'),
                  onPressed: () {
                    print('Hello Rambo');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

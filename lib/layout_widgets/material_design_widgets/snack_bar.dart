import 'package:flutter/material.dart';

void main() {
  runApp(Demo());
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SnackBarExample(),
    );
  }
}

class SnackBarExample extends StatefulWidget {
  const SnackBarExample({super.key});

  @override
  _SnackBarExampleState createState() => _SnackBarExampleState();
}

class _SnackBarExampleState extends State<SnackBarExample> {
  String? _displayText = ' ';
  void _showSnackBar() {
    final snackBar = SnackBar(
      content: const Text('This is a snack bar'),
      duration: const Duration(seconds: 4),
      action: SnackBarAction(
          label: 'undo',
          onPressed: () {
            setState(() {
              _displayText = 'Undo Button Clicked';
            });
          }),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: _showSnackBar, child: const Text('Show Snack Bar')),
            const SizedBox(
              height: 20,
            ),
            Text(_displayText.toString()),
          ],
        ),
      ),
    );
  }
}

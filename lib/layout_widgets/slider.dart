import 'package:flutter/material.dart';

void main() {
  runApp(SliderDemo());
}

class SliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderAlertDialog(),
    );
  }
}

class SliderAlertDialog extends StatefulWidget {
  @override
  _SliderAlertDialogState createState() => _SliderAlertDialogState();
}

class _SliderAlertDialogState extends State<SliderAlertDialog> {
  double? _sliderValue = 0.0;
  void _showValueDialog(double value) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('slider value'),
            content: Text('The current value is $value'),
            actions: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Scroll the slider'),
            Slider(
              value: _sliderValue ?? 0.0,
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue;
                  //_showValueDialog(newValue);
                });
              },
              min: 0,
              max: 100,
              divisions: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  _showValueDialog(_sliderValue ?? 0.0);
                },
                child: const Text('Show Value'))
          ],
        ),
      ),
    );
  }
}

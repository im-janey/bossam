import 'package:flutter/material.dart';

class ProgressBarWidget extends StatefulWidget {
  const ProgressBarWidget({super.key});

  @override
  State<ProgressBarWidget> createState() => _ProgressBarWidgetState();
}

class _ProgressBarWidgetState extends State<ProgressBarWidget> {
  bool _isDeterminate = false;
  double _progressValue = 0.0;

  void _toggleDeterminate(bool value) {
    setState(() {
      _isDeterminate = value;
      if (_isDeterminate) {
        _progressValue = 0.0;
        _simulateProgress();
      }
    });
  }

  void _simulateProgress() {
    Future.delayed(const Duration(milliseconds: 500), () {
      if (_isDeterminate && _progressValue < 1.0) {
        setState(() {
          _progressValue += 0.1;
        });
        _simulateProgress();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Mission Completed Status',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 30),
        LinearProgressIndicator(
          value: _isDeterminate ? _progressValue : null,
          semanticsLabel: 'Linear progress indicator',
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'Determinate Mode',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            Switch(
              value: _isDeterminate,
              onChanged: _toggleDeterminate,
            ),
          ],
        ),
      ],
    );
  }
}

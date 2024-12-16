import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bossam',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          primary: Colors.purple,
          secondary: Colors.amber,
          tertiary: Colors.green,
        ),
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.black,
                displayColor: Colors.black,
              ),
        ).copyWith(
          headlineMedium:
              GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.bold),
          bodyLarge: GoogleFonts.roboto(fontSize: 16),
          bodyMedium: GoogleFonts.roboto(fontSize: 14),
        ),
      ),
      home: const MyHomePage(title: 'bossam Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title,
          style: GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
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
          ),
        ),
      ),
    );
  }
}

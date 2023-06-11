import 'package:flutter/material.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'demo.dart';

void main() async {
  tz.initializeTimeZones();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const Demo(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:scaler_how_to_format_dates_in_flutter/displaying_time.dart';
import 'package:scaler_how_to_format_dates_in_flutter/formatting_date_ranges.dart';
import 'package:scaler_how_to_format_dates_in_flutter/handling_time_zones.dart';
import 'package:scaler_how_to_format_dates_in_flutter/localizing_dates.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Example App',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DisplayTime();
                  }));
                },
                child: const Text('Displaying Time')),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Localize();
                }));
              },
              child: const Text('Localizing Dates in Flutter'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Formatting();
                }));
              },
              child: const Text('Formatting Date Ranges'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TimeZones();
                }));
              },
              child: const Text('Handling Time Zones'),
            ),
          ],
        ),
      ),
    );
  }
}

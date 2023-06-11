import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DisplayTime extends StatefulWidget {
  @override
  _DisplayTimeState createState() => _DisplayTimeState();
}

class _DisplayTimeState extends State<DisplayTime> {
  late String _currentTime;

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  void _updateTime() {
    setState(() {
      _currentTime = DateFormat('HH:mm:ss').format(DateTime.now());
    });
    // Update time every second
    Future.delayed(const Duration(seconds: 1), _updateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 37, 35, 35), // Set dark background color
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            _currentTime,
            style: const TextStyle(
              color: Colors.white, // Set text color to white
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Formatting extends StatefulWidget {
  @override
  _FormattingState createState() => _FormattingState();
}

class _FormattingState extends State<Formatting> {
  String formattedDateRange = '';

  void formatDateRange() {
    var startDate = DateTime(2023, 6, 1);
    var endDate = DateTime(2023, 8, 10);

    var dateFormatter = DateFormat('MMM d, y');

    var formattedStartDate = dateFormatter.format(startDate);
    var formattedEndDate = dateFormatter.format(endDate);

    setState(() {
      formattedDateRange = '$formattedStartDate - $formattedEndDate';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formatted Date Range (MMM d, y)"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Date Range: 2023,6,1 - 2023,8,10',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 22),
            ElevatedButton(
              onPressed: formatDateRange,
              child: Text(
                'Format Date Range',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Date Range: $formattedDateRange',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

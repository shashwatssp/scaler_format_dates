import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;

class TimeZones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    tz.TZDateTime convertedDateTimeKolkata =
        tz.TZDateTime.from(DateTime.now(), tz.getLocation('Asia/Kolkata'));

    tz.TZDateTime convertedDateTimeUS =
        tz.TZDateTime.from(DateTime.now(), tz.getLocation('America/New_York'));

    tz.TZDateTime convertedDateTimeParis =
        tz.TZDateTime.from(DateTime.now(), tz.getLocation('Europe/Paris'));

    String formattedDateWithTimeZoneKolkata =
        DateFormat.yMd().add_Hm().format(convertedDateTimeKolkata) +
            ' (India/Kolkata)';

    String formattedDateWithTimeZoneUS =
        DateFormat.yMd().add_Hm().format(convertedDateTimeUS) +
            ' (America/New_York)';

    String formattedDateWithTimeZoneParis =
        DateFormat.yMd().add_Hm().format(convertedDateTimeParis) +
            ' (Europe/Paris)';

    return Scaffold(
      appBar: AppBar(
        title: Text('Handling Time Zones'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Current Time in India (Kolkata):',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              formattedDateWithTimeZoneKolkata,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Current Time in US (New York):',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              formattedDateWithTimeZoneUS,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Current Time in Paris:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              formattedDateWithTimeZoneParis,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

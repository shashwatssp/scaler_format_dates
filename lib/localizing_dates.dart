import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class Localize extends StatelessWidget {
  Localize() {
    initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var dateFormatter = DateFormat.yMMMMd('fr_FR');
    var timeFormatter = DateFormat.Hm('fr_FR');
    var formattedDateFrench = dateFormatter.format(now);
    var formattedTimeFrench = timeFormatter.format(now);

    dateFormatter = DateFormat.yMMMMd('de_DE');
    timeFormatter = DateFormat.Hm('de_DE');
    var formattedDateGerman = dateFormatter.format(now);
    var formattedTimeGerman = timeFormatter.format(now);

    dateFormatter = DateFormat.yMMMMd('nl_NL');
    timeFormatter = DateFormat.Hm('nl_NL');
    var formattedDateDutch = dateFormatter.format(now);
    var formattedTimeDutch = timeFormatter.format(now);

    return Scaffold(
      appBar: AppBar(
        title: Text('Localized Date & Time'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'French: $formattedDateFrench - $formattedTimeFrench',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'German: $formattedDateGerman - $formattedTimeGerman',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Dutch: $formattedDateDutch - $formattedTimeDutch',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

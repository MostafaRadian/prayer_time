import 'package:flutter/material.dart';

class PrayerTimeCard extends StatelessWidget {
  final String prayerName;
  final String prayerTime;

  PrayerTimeCard({required this.prayerName, required this.prayerTime});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black12,
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(prayerName),
          Text(prayerTime),
        ],
      ),
    );
  }
}

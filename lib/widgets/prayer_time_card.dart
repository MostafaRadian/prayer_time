import 'package:flutter/material.dart';

class PrayerTimeCard extends StatelessWidget {
  final String prayerName;
  final String prayerTime;

  PrayerTimeCard({required this.prayerName, required this.prayerTime});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0), // Increases space around the card
      shadowColor: Colors.black45, // Darkens shadow color for more depth
      elevation: 8, // Increases elevation for a stronger shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Adds rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(
            16.0), // Adds padding inside the card for more spacing
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              prayerName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0), // Adds space between name and time
            Text(
              prayerTime,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

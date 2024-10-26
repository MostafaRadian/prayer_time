import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/prayer_time_provider.dart';
import '../widgets/prayer_time_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prayer Times')),
      body: Consumer<PrayerTimeProvider>(
        builder: (context, provider, child) {
          final prayerTimes = provider.prayerTimes;

          if (prayerTimes == null) {
            provider
                .fetchPrayerTimes(); // Fetch prayer times if not yet available
            return const Center(
                child: CircularProgressIndicator()); // Loading state
          }

          // Display all prayer times using ListView.builder
          return ListView.separated(
            itemBuilder: (context, index) {
              final prayer = prayerTimes.prayerTimesList[index];
              final prayerName = prayer.keys.first;
              final prayerTime = prayer.values.first;

              return PrayerTimeCard(
                prayerName: prayerName,
                prayerTime: prayerTime,
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: prayerTimes.prayerTimesList.length,
          );
        },
      ),
    );
  }
}

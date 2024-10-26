import 'package:flutter/material.dart';

import '../models/prayer_time_model.dart';
import '../services/prayer_time_service.dart';
import '../widgets/prayer_time_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PrayerTimeModel? prayerTimes;

  @override
  void initState() {
    super.initState();
    fetchPrayerTimes(); // Fetching prayer times when the app starts
  }

  Future<void> fetchPrayerTimes() async {
    prayerTimes = await PrayerTimeService.getPrayerTimes(); // Calls API
    setState(() {}); // Refresh the UI
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prayer Times')),
      body: prayerTimes == null
          ? const Center(child: CircularProgressIndicator()) // Loading state
          : ListView.separated(
              itemBuilder: (BuildContext context, int index) => PrayerTimeCard(
                  prayerName: 'Fajr', prayerTime: prayerTimes!.fajr),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 20),
              itemCount: 5,
            ),
    );
  }
}
// [
//
// PrayerTimeCard(
// prayerName: 'Dhuhr', prayerTime: prayerTimes!.dhuhr),
// PrayerTimeCard(prayerName: 'Asr', prayerTime: prayerTimes!.asr),
// PrayerTimeCard(
// prayerName: 'Maghrib', prayerTime: prayerTimes!.maghrib),
// PrayerTimeCard(
// prayerName: 'Isha', prayerTime: prayerTimes!.isha),
// ],

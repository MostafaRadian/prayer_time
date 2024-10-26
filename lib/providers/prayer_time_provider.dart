import 'package:flutter/material.dart';

import '../models/prayer_time_model.dart';
import '../services/prayer_time_service.dart';

class PrayerTimeProvider with ChangeNotifier {
  PrayerTimeModel? _prayerTimes;

  PrayerTimeModel? get prayerTimes => _prayerTimes;

  Future<void> fetchPrayerTimes() async {
    _prayerTimes = await PrayerTimeService.getPrayerTimes();
    notifyListeners(); // Notify listeners to update the UI
  }
}

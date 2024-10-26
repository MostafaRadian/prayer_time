import 'package:dio/dio.dart';

import '../models/prayer_time_model.dart';

class PrayerTimeService {
  static Dio dio = Dio(); // Initialize Dio instance

  static Future<PrayerTimeModel> getPrayerTimes() async {
    try {
      // Same URL for fetching prayer times
      const url =
          'http://api.aladhan.com/v1/timingsByCity?city=Giza&country=Egypt&method=2';

      final response = await dio.get(url); // Dio's GET request

      if (response.statusCode == 200) {
        return PrayerTimeModel.fromJson(
            response.data); // Convert to PrayerTimeModel
      } else {
        throw Exception('Failed to load prayer times');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Error fetching prayer times');
    }
  }
}

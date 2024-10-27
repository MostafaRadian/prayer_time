import 'package:dio/dio.dart';

import '../models/prayer_time_model.dart';

class PrayerTimeService {
  static Dio dio = Dio();

  static Future<PrayerTimeModel> getPrayerTimes() async {
    try {
      const url =
          'http://api.aladhan.com/v1/timingsByCity?city=Giza&country=Egypt';
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        return PrayerTimeModel.fromJson(
          response.data,
        ); // Convert to PrayerTimeModel
      } else {
        throw Exception('Failed to load prayer times');
      }
    } catch (error) {
      print('Error: $error');
      throw Exception('Error fetching prayer times');
    }
  }
}

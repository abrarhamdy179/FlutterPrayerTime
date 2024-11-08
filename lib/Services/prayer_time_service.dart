import 'package:dio/dio.dart';

import '../Models/prayer_time_model.dart';

class PrayerTimeService
{
  static Dio dio = Dio();
  static getData() async
  {
    try
        {
          Response response = await dio.get("http://api.aladhan.com/v1/timingsByCity/08-11-2024?city=Giza&country=Egypt&method=2");
          if(response.statusCode==200)
          {
            return PrayerTimeModel.ConvertFromJson(response.data);
          }
          else
          {
            throw Exception("Code not Success");
          }
        }
        catch(e)
    {
      throw Exception(e);
    }
  }
}
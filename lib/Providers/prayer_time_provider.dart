import 'package:flutter/cupertino.dart';

import '../Models/prayer_time_model.dart';
import '../Services/prayer_time_service.dart';

class PrayerTimeProvider extends ChangeNotifier
{
  PrayerTimeModel?prayerTimeModel;
  Future<void> getPrayerTimeService () async
  {
    prayerTimeModel = await PrayerTimeService.getData();
    notifyListeners();
  }
}
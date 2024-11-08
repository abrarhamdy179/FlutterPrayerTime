class PrayerTimeModel
{
  Map<String,dynamic> data;

  PrayerTimeModel({required this.data});

  factory PrayerTimeModel.ConvertFromJson(Map<String,dynamic>jsonData)
  {
    return PrayerTimeModel(data: jsonData['data']['timings']);
  }
}
import 'package:flutter/material.dart';
class PrayerTimeWidget extends StatelessWidget {
  String prayerName ,prayerTime;
  PrayerTimeWidget({super.key,required this.prayerName,required this.prayerTime});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          prayerName.isNotEmpty ? Text(prayerName):Text("Prayer Name Not Found "),
          SizedBox(height: 50,),
          prayerTime.isNotEmpty ? Text(prayerTime) : Text("Prayer Time Not Found"),
        ],
      ),
    );
  }
}

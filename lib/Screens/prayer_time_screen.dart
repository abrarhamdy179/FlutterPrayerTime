import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/prayer_time_provider.dart';
import '../Widgets/prayer_time_widget.dart';
class PrayerTimeScreen extends StatelessWidget {
  const PrayerTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<PrayerTimeProvider>(builder: (context, value, child) {
        var obj = value.prayerTimeModel;
        if(obj==null)
          {
            value.getPrayerTimeService();
            return Center(child: CircularProgressIndicator());
          }
        else
          {
            return ListView.builder(
              itemBuilder: (context, index) {
                return PrayerTimeWidget(
                  prayerName:obj.data.keys.elementAt(index)  ,
                  prayerTime:obj.data.values.elementAt(index) ,
                );
              },
              itemCount: obj.data.length,
            );
          }
      },),
    );
  }
}

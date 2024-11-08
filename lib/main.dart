import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/prayer_time_provider.dart';
import 'Screens/prayer_time_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>PrayerTimeProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PrayerTimeScreen(),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/weather_api.dart';
import 'package:weather_app/weather_view.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (ctx) => WeatherApi(),
    ),
  ],
  child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherView(),
    );
  }
}

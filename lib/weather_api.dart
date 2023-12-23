import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/forcast_model.dart';

import 'calss_model.dart';
import 'utils.dart';

class WeatherApi extends ChangeNotifier {
  ClassModel? data;

// Map data = {};
  List<ForecastModel> days = [];

  getData() async {
    final response = await http
        .get(Uri.parse(Utils.baseUrl + Utils.apiKey + Utils.endboint));
    if (response.statusCode == 200) {
      data = ClassModel.fromJson(jsonDecode(response.body));
    } else {
      print('error');
    }
    notifyListeners();
  }

  getForecast() async {
    final response = await http
        .get(Uri.parse(Utils.baseurlFor + Utils.apiKey + Utils.endbointFor));
    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      var tommorrow = DateTime.now().add(Duration(days: 1));
      final daysData = jsonDecode(response.body)["forecast"]["forecastday"];
      print(daysData.length);
      for (int i = 1; i < daysData.length; i++) {
        days.add(ForecastModel(
            day: DateFormat('EEEE').format(tommorrow),
            temp: daysData[i]["day"]["avgtemp_c"],
            icon: 'https:${daysData[i]["day"]["condition"]["icon"]}')

        );
        tommorrow.add(Duration(days: 1));
      }

    } else {
      print('error');
    }

    notifyListeners();
  }
}

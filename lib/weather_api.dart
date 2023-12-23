import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import 'utils.dart';

class WeatherApi extends ChangeNotifier{
Map data = {};

 getData() async {
    final response = await http.get(
        Uri.parse
          (Utils.baseUrl+Utils.apiKey+Utils.endboint));
    if (response.statusCode == 200){
       data = jsonDecode(response.body);
       print(response.body);
    }
    else{
      print('error');
    }
  }
  
}